<?php
    $array_fecha = getdate();
    $año = $array_fecha['year'];
    $mes = $array_fecha['mon'];
    $dia = $array_fecha['mday'];

    if(strlen ($mes)==1){                       #si mes tiene un digito anteponer un 0 al mes
        if(strlen ($dia)==1){                       #si dia tambien tiene un digito anteponer un 0 al dia
            //$fecha_hoy = $año.'-0'.$mes.'-0'.$dia;
            $fecha_hoy = '0'.$dia.'/0'.$mes.'/'.$año;
        }else{
            $fecha_hoy = $dia.'/0'.$mes.'/'.$año;
        }
    }else{
        if(strlen ($dia)==1){                       #si dia tiene un digito anteponer un 0 al dia
            $fecha_hoy = '0'.$dia.'/'.$mes.'/0'.$año;
        }else{
            $fecha_hoy = $dia.'/'.$mes.'/'.$año;
        }
    }
?>


<li role="presentation" class="dropdown animated bounce">
    <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
        <i class="fa fa-envelope-o"></i>
        <span class="badge bg-red">
            <?php $i=0; ?>
            @foreach($pedidos as $pedido)
                    <?php
                        $fecha_entrega = \Carbon\Carbon::createFromFormat('d/m/Y', $pedido->fecha_entrega_estimada);
                        $fecha_hoy = \Carbon\Carbon::now('America/Buenos_Aires');
                    ?>
                @if($fecha_entrega <= $fecha_hoy)
                        <?php $i++; ?>
                @endif
            @endforeach
            {{ $i }}
        </span>
    </a>
    <ul id="menu1" class="dropdown-menu list-unstyled msg_list animated fadeInDown" role="menu">
        <span>
            <span><h4 class="text-facebook">Hay clientes que podrian retirar sus pedidos</h4></span>
        </span>
        @foreach($pedidos as $pedido)
            <?php
            $fecha_entrega = \Carbon\Carbon::createFromFormat('d/m/Y', $pedido->fecha_entrega_estimada);
            $fecha_hoy = \Carbon\Carbon::now('America/Buenos_Aires');
            ?>
          @if($fecha_entrega < $fecha_hoy)
            @if($pedido->entregado == 0)
                <li>
                    <a>

                        <a data-toggle="tooltip" data-placement="top" title="Visualizar registro. Al visualizar este registro podrá señar la totalidad del pedido o realizar la entrega del pedido" href="{{ route('admin.pedidos.edit', $pedido->id) }}" class="btn btn-info">
                            <span class="message">
                               @if($fecha_entrega == $fecha_hoy)
                                  <h5 class="text-filter-box">Hoy se debe entregar el pedido de {{$pedido->cliente->nombre}} {{$pedido->cliente->apellido}}, n° de pedido {{$pedido->id}} del {{$pedido->fecha_pedido}}</h5>
                               @elseif($fecha_entrega <  $fecha_hoy)
                                    <h5 class="text-filter-box text-danger">Hace {{ $fecha_entrega->diffInDays($fecha_hoy)}} días se debió entregar el pedido de {{$pedido->cliente->nombre}} {{$pedido->cliente->apellido}}, n° de pedido {{$pedido->id}} del {{$pedido->fecha_pedido}}</h5>
                               @endif
                            </span>
                        </a>

                    </a>
                </li>
            @endif
          @endif
        @endforeach
        <!--
            <li>
            <div class="text-center">
                <a href="inbox.html">
                    <strong>Ver todas</strong>
                    <i class="fa fa-angle-right"></i>
                </a>
            </div>
        </li>
        -->
    </ul>
</li>