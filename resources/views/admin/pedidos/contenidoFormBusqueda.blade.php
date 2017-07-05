{!! Form::open(['route' => 'admin.pedidos.index', 'method' => 'GET']) !!}
  <div class="col-xs-1"></div>

  <div class="col-xs-4">
      <div class="input-icon right">
        <i class="fa fa-calendar"></i>
        <input type="date"  class="form-control" onchange="/*cambio();" id="idFechaAuditoriaInicio" value="{{ $fecha1 }}" name="fechaInicio" title="Buscar a partir" value="" required/>
      </div>
  </div>
  <div class="col-xs-4">
     <div class="input-icon right">
       <i class="fa fa-calendar"></i>
       <input type="date"  class="form-control" onchange="/*cambio();" id="idFechaAuditoriaFin" value="{{ $fecha2 }}" name="fechaFin" title="Buscar hasta" required/>
     </div>
  </div>
    <div class="col-sm-6">
        <label><input type="radio" name="radio" value="buscar_en_fecha_pedido" checked>Fecha de Toma</label>
        &nbsp;&nbsp;&nbsp;
        <label><input type="radio" name="radio" value="buscar_en_fecha_entrega">Fecha de Entrega</label>
       {{--

       <form id="radioGroupPago">
            &nbsp;
            <input type="radio" name="buscar_en_fecha_pedido" id="chkToma">Toma
            &nbsp;
            <input type="radio" name="buscar_en_fecha_entrega" id="chkEntrega">Entrega
        </form>
        --}}
    </div>
  {!! Form::submit('Buscar pedidos', ['class' => 'btn btn-primary']) !!}&nbsp;<span class="fa fa-search" aria-hidden="true"></span>
{!! Form::close() !!}
