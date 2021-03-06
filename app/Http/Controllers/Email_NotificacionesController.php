<?php

namespace App\Http\Controllers;

use App\Cliente;
use Illuminate\Http\Request;

use App\Http\Requests;
use App\Http\Controllers\Controller;
use Mail;
use Session;
use Redirect;
use Laracasts\Flash\Flash;
use Illuminate\Support\Facades;
use Carbon\Carbon;

class Email_NotificacionesController extends Controller
{
    public function index(Request $request)     /**Para notificacion automatica de stock bajo a administrador**/
    {
        if($request->ajax()){
            if($request->email_info){
                /*

                Mail::send('emails.datos_pedido', ['cliente'=>$nombre_y_apellido, 'total'=>$request->total, 'fecha_hoy'=>$request->fecha_hoy, 'fecha_entrega'=>$request->fecha_entrega, 'items'=>$request->items], function($msj){
                    $msj->subject('Información de su pedido');
                    $msj->to('jpcaceres.nea@gmail.com');
                });
                Flash::overlay('Se ha enviado email con la info del pedido');
                return response()->json(json_encode("Se envio el email del pedido, desde MailController.php", true));
                */
                $cliente = Cliente::find($request->id_cliente);
                $nombre_y_apellido = $cliente->nombre;
                try{
                    Mail::send('emails.infopedido', ['cliente'=>$nombre_y_apellido, 'sena'=>$request->sena, 'total'=>$request->total, 'items'=>$request->items], function($msj){
                        $msj->subject('GN Informacion Pedido');
                        $msj->to('jpaulnava@gmail.com');
                    });
                    Flash::overlay('Se ha notificado al cliente');
                    //Flash::overlay('Se ha enviado email con la info del pedido');
                    return response()->json(json_encode("Se envio el email con info de su pedido desde MailController.php", true));
                    //return view('emails.datos_pedido');
                }catch (Exception $e){
                    $respuesta = array("excepcion"=>$e);
                    return response()->json(json_encode($respuesta, true));
                }
            }
            if($request->email_stockBajo){
                Mail::send('emails.stock_bajo', ['mensaje'=>$request->mensaje], function($msj){
                    $msj->subject('Notificacion de stock bajo');
                    $msj->to('jpaulnava@gmail.com');
                });
                Flash::overlay('Se ha notificado al repositor de la necesidad de reponer insumos');
                return response()->json(json_encode("Se envio el email, al administrador para reponer stock de insumos faltantes", true));
            }
        }
    }
}
