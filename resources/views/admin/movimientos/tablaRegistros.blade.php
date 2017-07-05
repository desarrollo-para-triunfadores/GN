<div id="tab-lista" class="tablaResultados2 col-lg-12">
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-yellow">
                <div class="panel-heading">Movimientos
                    {{--
                    <div class="page-header pull-left ">
                        <div class="page-toolbar">
                            <div class="row">
                                @include('admin.movimientos.contenidoFormBusqueda')
                            </div>
                        </div>
                    </div>
                    --}}
                </div>
                <div class="panel-body">                    
                    <br>                   
                    @include('admin.partes.msjError')
                    @include('flash::message')
                    <table border="0" cellspacing="5" cellpadding="5">
                        <tbody>
                        <tr>
                            <td>Desde: &nbsp;</td>
                            <td><input type="text" id="fecha_mov_min" name="fecha_mov_min"></td>
                        </tr>
                        <tr>
                            <td>Hasta: &nbsp;</td>
                            <td><input type="text" id="fecha_mov_max" name="fecha_mov_max"></td>
                        </tr>
                        </tbody>
                    </table>
                    <table id="tab-movimientos" class="display  table table-hover table-striped">
                        <thead>
                            <tr>
                                <th class="text-center">N°</th>
                                <th class="text-center">Concepto</th>
                                <th class="text-center">Fecha y hora</th>
                                <th class="text-center">Tipo</th>
                                <th class="text-center">Monto</th>
                                <th class="text-center">Usuario</th>
                            </tr>
                        </thead>

                        <tbody>
                        @foreach($caja->movimientos as $movimiento)
                                <tr>
                                    <td class="text-center">{{ $movimiento->id }}</td>
                                    @if($movimiento->ccorriente)
                                        <td class="text-center text-dark">{{ $movimiento->concepto }} ({{ $movimiento->ccorriente->cliente->nombre}} {{ $movimiento->ccorriente->cliente->apellido}})</td>
                                    @else
                                        <td class="text-center text-dark">{{ $movimiento->concepto }}</td>
                                    @endif
                                    <td class="text-center">{{ $movimiento->fecha }}</td>
                                    @if($movimiento->tipo=="entrada")
                                        <td class="text-center">Entrada 📈️</td>
                                    @else
                                        <td class="text-center">Salida &nbsp;&nbsp; 📉️️</td>
                                    @endif

                                    <td class="text-center">${{ $movimiento->monto }}</td>
                                    @if($movimiento->monto)
                                    <td class="text-center">{{ $movimiento->user->name}}</td>
                                    @endif
                                </tr>

                        @endforeach
                        </tbody>
                        <tfoot>
                        <tr>
                            <th class="text-center">N°</th>
                            <th class="text-center">Concepto</th>
                            <th class="text-center">Fecha y hora</th>
                            <th class="text-center">Tipo</th>
                            <th class="text-center">Monto</th>
                            <th class="text-center">Usuario</th>
                        </tr>
                        <tfoot>
                    </table>            
                </div>
            </div>
        </div>
    </div>
</div>


@section('script')
   
<!--    //<script src="{{ asset('js/pluginsCajas.js') }}"></script>-->
@endsection