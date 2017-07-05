{!! Form::open(['route' => 'admin.compras.index', 'method' => 'GET']) !!}
  <div class="col-xs-1"></div>

  <div class="col-xs-4">
      <div class="input-icon right">
        <i class="fa fa-calendar"></i>
        <input type="date"  class="form-control" onchange="/*cambio();" id="idFechaAuditoriaInicio" value="{{-- $fecha1 --}}" name="fechaInicio" title="Buscar a partir" value="" required/>
      </div>
  </div>
  <div class="col-xs-4">
     <div class="input-icon right">
       <i class="fa fa-calendar"></i>
       <input type="date"  class="form-control" onchange="/*cambio();" id="idFechaAuditoriaFin" value="{{-- $fecha2 --}}" name="fechaFin" title="Buscar hasta" required/>
     </div>
  </div>
  {!! Form::submit('Buscar compras', ['class' => 'btn btn-primary']) !!}&nbsp;<span class="fa fa-search" aria-hidden="true"></span>
{!! Form::close() !!}
