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
                    <table id="tab-movimientos" class="display dataTable table table-hover table-striped">
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
    <script type="text/javascript" charset="utf-8">

        $.fn.dataTableExt.afnFiltering.push(
                function( oSettings, aData, iDataIndex ) {
                    var iFini = document.getElementById('dateStart').value;
                    var iFfin = document.getElementById('dateend').value;
                    var iStartDateCol = 2;
                    var iEndDateCol = 2;

                    iFini=iFini.substring(0,2) + iFini.substring(3,5)+ iFini.substring(6,10)
                    iFfin=iFfin.substring(0,2) + iFfin.substring(3,5)+ iFfin.substring(6,10)

                    var datofini=aData[iStartDateCol].substring(0,2) + aData[iStartDateCol].substring(3,5)+ aData[iStartDateCol].substring(6,10);
                    var datoffin=aData[iEndDateCol].substring(0,2) + aData[iEndDateCol].substring(3,5)+ aData[iEndDateCol].substring(6,10);


                    if ( iFini == "" && iFfin == "" )
                    {
                        return true;
                    }
                    else if ( iFini <= datofini && iFfin == "")
                    {
                        return true;
                    }
                    else if ( iFfin >= datoffin && iFini == "")
                    {
                        return true;
                    }
                    else if (iFini <= datofini && iFfin >= datoffin)
                    {
                        return true;
                    }
                    return false;
                }
        );

        $(function() {
            // Implements the dataTables plugin on the HTML table
            var $oTable= $("#tab-movimientos").dataTable( {
                "sDom": '<"top"><"clear">t<"bottom"i><"clear">',
                "iDisplayLength": 20,
                "oLanguage": {
                    "sLengthMenu": 'Show <select><option value="25">25</option><option value="50">50</option><option value="100">100</option><option value="200">200</option></select>'
                },
                "bJQueryUI": true,
                //"sPaginationType": "full_numbers",
                "aoColumns": [
                    null,
                    null,
                    { "sType": "date" }
                ]
            });


            $('#fecha_mov_min, #fecha_mov_min').daterangepicker(
                    {
                        dateFormat: 'dd/mm/yy',
                        arrows: true
                    }

            );


            /* Add event listeners to the two range filtering inputs */
            $('#fecha_mov_min').keyup( function() { oTable.fnDraw(); } );
            $('#fecha_mov_max').keyup( function() { oTable.fnDraw(); } );

            /* Add event listeners to the two range filtering inputs */
            $('#fecha_mov_min').keyup( function() { oTable.fnDraw(); } );
            $('#fecha_mov_max').keyup( function() { oTable.fnDraw(); } );

            /* Add event listeners to the two range filtering inputs */
            $('#fecha_mov_min').keyup( function() { oTable.fnDraw(); } );
            $('#fecha_mov_max').keyup( function() { oTable.fnDraw(); } );
        });

    </script>
    <script src="{{ asset('js/pluginsCajas.js') }}"></script>
@endsection