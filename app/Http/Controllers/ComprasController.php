<?php

namespace App\Http\Controllers;

use App\Articulo;
use App\InsumoArticulo;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use App\Compra;
use App\Caja;
use App\Movimiento;
use App\Insumo;
use App\InsumoCompra;
use Laracasts\Flash\Flash;

use Carbon\Carbon;
use Illuminate\Routing\Route;

use App\Auditoria;
use Illuminate\Support\Facades\Auth;

class ComprasController extends Controller {

    public function __construct()
    {
        Carbon::setlocale('es'); // Instancio en Esp el manejador de fechas de Laravel
        $rol_id = Auth::user()->rol->id;
        if(Auth::user()->rol->searchModulos('Insumos_Compras')->where('id', $rol_id)->count() != 0){
            #PASA#
        }
        else{
            dd("Usted NO tiene permisos para acceder a este subsistema");
            return view('admin.partes.noAutorizado');
        }
    }

    public function index(Request $request) {
        $compras = Compra::all();    //se considerara compra mostrable solo la que fue recibida
        $fecha1= "";
        $fecha2= "";

        $compras_entre_fechas = [];
        if(!is_null($request->fechaInicio)){
            $fecha1= $request->fechaInicio;
            $fecha1_en_datetime = Carbon::createFromFormat('Y-m-d', $fecha1);   //convertimos a datetime, para calculos con fecha
            //$fecha1 = date_format($fecha1_en_datetime, "d/m/Y");
            $fecha2= $request->fechaFin;
            $fecha2_en_datetime = Carbon::createFromFormat('Y-m-d', $fecha2);   //convertimos a datetime, para calculos con fecha
            //$fecha2 = date_format($fecha2_en_datetime, "d/m/Y");
            //dd($fecha1, $fecha2);
            /** si se pide un intervalo de fechas... */
            foreach ($compras as $compra) {
                //--------------------------- seteamos a la variable $fechaPedido con la fecha de pedido o la fecha de entrega, segun chechbox de vista tablaPedidos.blade.php ------------------------

                $fechaCompra = Carbon::createFromFormat('d-m-Y', $compra->fecha_compra);  //convertimos a datetime, para calculos con fecha

                //------------------------------------------------------------------------------------------------
                if ( ( $fechaCompra >= $fecha1_en_datetime)&&($fechaCompra <= $fecha2_en_datetime)){ //se compara que la fecha del pedido se encuentre entre las fechas que determinan el rango
                    array_push($compras_entre_fechas, $compra);      //guardamos la pedido en un listado para pasar a la vista
                    //dd($fechaCompra);
                    //las dos posteriores variables son contadores que se irán incrementando a medida que transcurra el foreach
                }
            }
            //se retornan la vista y los datos asociados a ella.
            return view('admin.compras.tablaPedidos')
                ->with('compras',$compras_entre_fechas)
                ->with('fecha1',$fecha1)
                ->with('fecha2',$fecha2);
            /** Fin de filtrado de pedidos por intervalo de fechas */
        }else {
            $compras = Compra::searchRecibido(1)//se considerara compra mostrable solo la que fue recibida
            ->orderBy('id', 'ASC')
                ->paginate();
            return view('admin.compras.tablaPedidos')->with('compras', $compras);
        }
    }

    public function create(Request $request) {
        $caja = Caja::where('cerrado', false)->first(); //Aca se busca el primer registro de caja que este activo (supuestamente debería ser el único, igual se pone asi para que no siga buscando al pedo)
        if ($caja === null) { //al llegar aca preguta si enncontro algo(si $caja no es un objeto vacio o null)
            return view('admin.cajas.create'); //se devuelve la vista para abrir una caja
        } else {
            /*
             * Si la solicitud se realiza a través de ajax quiere decir que que se quiere impactar en caja una nueva compra.
             * En caso contrario se devuelve la pantalla para realizar una compra */
            if ($request->ajax()) {
                if($caja->totalMovimientos() < ($request->costo_envio + $request->montoPedido)){
                    return response()->json("No tiene suficiente dinero registrado en caja para efectuar el pedido.");
                }
                /** Primero se recoge en una variable el array de renglones y se crea y persiste el registro de pedido/compra */
                $arrayRenglones = $request->renglones;
                $fecha = \Carbon\Carbon::now('America/Buenos_Aires');
                $compra = new Compra();
                $movimiento = new Movimiento();
                $compra->fecha_pedidoCompra = $fecha->format('d-m-Y');
                $compra->hora_pedidoCompra = $fecha->format('H:i');

                $compra->importe_insumos = $request->montoPedido;
                $compra->importe_costo_envio = $request->costo_envio;
                $compra->importe = ($request->montoPedido) + ($compra->importe_costo_envio);   //aca se deben sumar costos de envio e importe_insumos
                $compra->concepto = "Reposicion de stock";

                // en compra no permitimos señas        $compra->senado = $request->sena;
                if ($request->confirmado == "true") {
                    $compra->confirmado = 1;
                }
                $compra->userCompra_id = $request->usuarioPedido;   //usuarioPedido es el que pidio la compra
                //$compra->proveedor_id = $request->proveedor;  no va porque hay muchos proveedoretes en una compra
                $conceptoMovimiento = "";
                if ($request->pagado == "true") {
                    $compra->pagado = 1;
                }
                if ($request->recibido == "true") {
                    $compra->recibido = 1;
                }
                if (($request->pagado == "true") && ($request->recibido == "true")) {
                    $compra->userCompra_id = Auth::user()->id;
                    $compra->fecha_compra = $fecha->format('d-m-Y');
                    $compra->hora_compra = $fecha->format('H:i');
                    $conceptoMovimiento = "Compra de insumos por un monto de $" . $compra->importe;
                }
                $compra->nro_cte_asociado = $request->nro_cte_asociado;
                $compra->save();
                /** Auditoria almacena compra */
                $auditoria = new Auditoria();
                $auditoria->tabla = "compras";
                $auditoria->elemento_id = $compra->id;
                $autor = new Auth();
                $autor->id = Auth::user()->id;          //Conseguimos el id del usuario actualmente logueado
                $auditoria->usuario_id = $autor->id;    //lo asignamos a la auditorias
                $auditoria->accion = "alta";
                $auditoria->dato_nuevo = "concepto: ".$compra->concepto." || importe insumos: ".$compra->importe_insumos." || costo envio: ".$compra->importe_costo_envio." || importe total: ".$compra->importe." || fecha_solicitud: ".$compra->fecha_pedidoCompra." || hora_solicitud: ".$compra->hora_pedidoCompra." || fecha compra:".$compra->fecha_compra." || hora_compra:".$compra->hora_compra." || confirmado: ".$compra->confirmado." || pagado: ".$compra->pagado." || recibido: ".$compra->recibido." || userCompra_id: ".$compra->userCompra_id;
                $auditoria->dato_anterior = null;
                $auditoria->save();

                /* Se recorre el array creando a su paso objetos "InsumoCompra" a partir de los json que se hallan en
                 * el array y se persisten. Luego se instancia el insumo en cuestion y se incrementa el stock.
                 * */
                foreach($arrayRenglones as $clave) {
                    $renglon = new InsumoCompra();
                    $renglon->cantidad = $clave['cantidad'];    //ok
                    $renglon->importe_insumo = $clave['importe'];   //ok
                    $renglon->precio_unitario = $clave['costo_unitario'];   //ok
                    $renglon->insumo_id = $clave['insumo_id'];              //ok
                    $renglon->compra_id = $compra->id;
                    $renglon->proveedor_id = $clave['proveedor_id'];
                    $renglon->save();

                    /** Incrementar stock por insumo comprado */
                    $insumo = Insumo::find($clave['insumo_id']);    //busco el insumo que quiero actualizar
                    if ($request->no_act_stock == "true") {
                        #no hacer nada
                    }else{
                        #incrementar stock
                        $insumo->incrementarStock($clave['cantidad']);
                    }
                    /** Actializar costo de insumo al comprar */
                    $insumo->costo_anterior = $insumo->costo;
                    $insumo->actualizarCosto($clave['costo_unitario']);
                    $insumo->save();
                    /** Actualizar precioVta del artculo (solo si el insumo comprado es mayor que el que se tenia)*/
                    $costoInsumoNvoComprado = $clave['costo_unitario'];

                    $insumoArticulo = new InsumoArticulo();
                    $id = $insumo->id;
                    $insumoArticulo = InsumoArticulo::where('insumo_id', $id)->first();
                    if($insumo->costo_anterior < $costoInsumoNvoComprado) {
                        if ($insumoArticulo) {    //si no es null (si hay articulos relacionados con ese insumo)
                            $idArticulo = ($insumoArticulo->articulo_id);
                            $articulo = Articulo::find($idArticulo);
                            $costoHastaAhoraArticulo = $articulo->costo;

                            $diferenciasCostosInsumo = ($costoInsumoNvoComprado) - ($insumo->costo_anterior);
                            $nuevoCostoProduccion = /*actual*/
                                ($costoHastaAhoraArticulo) + ($diferenciasCostosInsumo);
                            $articulo->costo = $nuevoCostoProduccion;
                            $nvoPrecioVta = ($articulo->precioVta) + ($diferenciasCostosInsumo);    #_OK
                            $articulo->precioVta = $nvoPrecioVta;                                   #_OK

                            $nvoMontoIva = (($articulo->iva->iva) / 100) * ($articulo->precioVta);
                            $articulo->montoIva = $nvoMontoIva;                                     #_OK
                            //
                            $importe_neto_articulo = ($nvoPrecioVta) - ($nvoMontoIva);     //el total sin el iva
                            $ganancia_articulo = ($importe_neto_articulo) - ($nuevoCostoProduccion);
                            $articulo->ganancia = $ganancia_articulo;                               #OK
                            $margen = ($ganancia_articulo * 100)/$nuevoCostoProduccion;
                            $articulo->margen = $margen;
                            $articulo->save();              //Guardamos la actualizacion de Articulo
                        }
                    }
                    elseif($insumo->costo_anterior > $costoInsumoNvoComprado){      /* si el insumo es de un perio menor al comprado anteriormente se mantiene el precio de venta del articulo...pero la ganancia crece */
                            $idArticulo = ($insumoArticulo->articulo_id);
                            $articulo = Articulo::find($idArticulo);
                            $costoHastaAhoraArticulo = $articulo->costo;

                            $diferenciasCostosInsumo = ($costoInsumoNvoComprado)-($insumo->costo_anterior);
                            $nuevoCostoProduccion = /*actual*/($costoHastaAhoraArticulo) + ($diferenciasCostosInsumo);
                            $articulo->costo = $nuevoCostoProduccion;
                            //
                            $importe_neto_articulo = ($articulo->precioVta)-($articulo->montoIva);     //el total sin el iva
                            $ganancia_articulo = ($importe_neto_articulo)-($nuevoCostoProduccion);
                            $articulo->ganancia = $ganancia_articulo;
                            $margen = ($ganancia_articulo*100)/$nuevoCostoProduccion;
                            $articulo->margen = $margen;
                            $articulo->save();              //Guardamos la actualizacion de Articulo
                     }
                }
                /** En este sector se completan los campos y se registra el movimientos en la caja.*/

                $movimiento->caja_id = $caja->id;
                $movimiento->tipo = 'salida';
                $movimiento->monto = $compra->importe;
                $movimiento->compra_id = $compra->id;
                $movimiento->user_id = $request->usuarioPedido;
                $movimiento->hora = $fecha->format('H:i');
                $movimiento->fecha = $fecha->format('d-m-Y');
                $movimiento->concepto = $conceptoMovimiento;
                $movimiento->save();

                /*
                 * Una vez completado el proceso se procede con redireccionar a la pantalla de compras.
                 */
                if (($request->pagado == "true") && ($request->entregado == "true")) {
                    return response()->json("¡La compra fue registrada con éxito!");
                } else {
                    return response()->json("¡El pedido de compra fue registrado con éxito!");
                }
                return view('admin.compras.createPedido'); // se devuelve la caja en cuestion.
            }
            return view('admin.compras.createPedido'); // se devuelve la caja en cuestion.
        }
    }

    public function store(Request $request) {
        return response()->json("Exito PRUEBA!");
    }

    public function edit($id) {
        $compra = Compra::find($id);
        return view('admin.compras.showCompra')->with('compra', $compra);
    }

    public function update(Request $request, $id) {
        $pedido = Venta::find($id);
        $fecha = \Carbon\Carbon::now('America/Buenos_Aires');
        if ($request->pagado) {
            $caja = Caja::where('cerrado', false)->first(); //Aca se busca el primer registro de caja que este activo (supuestamente debería ser el único, igual se pone asi para que no siga buscando al pedo)
            if ($caja === null) { //al llegar aca preguta si enncontro algo(si $caja no es un objeto vacio o null)
                return view('admin.cajas.create'); //se devuelve la vista para abrir una caja
            } else {
                $restoPago = $pedido->importe() - $pedido->senado;
                $pedido->pagado = 1;
                $movimiento = new Movimiento();
                $movimiento->concepto = "Se termino de pagar un pedido por el monto de: $" . $restoPago;
                $movimiento->caja_id = $caja->id;
                $movimiento->tipo = 'entrada';
                $movimiento->monto = $restoPago;
                $movimiento->venta_id = $pedido->id;
                $movimiento->user_id = $request->usuarioPedido;
                $movimiento->hora = $fecha->format('H:i');
                $movimiento->fecha = $fecha->format('d-m-Y');
                $movimiento->save();
            }
        }
        if ($request->entregado) {
            $pedido->entregado = 1;
            $pedido->userVenta_id = $request->usuarioPedido;
            $pedido->fecha_venta = $fecha->format('d-m-Y');
            $pedido->hora_venta = $fecha->format('H:i');
        }
        $pedido->save();
        Flash::success("Se ha realizado la actualización del estado del pedido.");
        return redirect()->route('admin.pedidos.edit', $id);
    }
}
