@extends('template.main')
@section('title','Editar Promociones')
@section('htmlcore')
    <div class="row">
        <div class="col-md-3">
            <h1>Edicion de Promociones</h1>
        </div>
        <div class="col-md-3">
            <img src="{{asset('img/metros.jpg')}}" alt="" class=" img-circle img-responsive">
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            {!! Form::open(['route'=>['promociones.update',$promocion],'method'=>'PUT']) !!}
            {!! Form::token() !!}
            <div class="form-group">
                <label for="nombre">Nombre</label>
                <input type="text" value="{{$promocion->nombre}}" name="nombre" required="true" placeholder="Nombre" id="nombre" class="form-control">
            </div>

            <div class="form-group">
                <label for="apellidos">Descripcion de Promocion</label>
                <textarea name="descripcion"  id="" cols="30" rows="10" class="form-control">{{$promocion->descripcion}}</textarea>
            </div>

            <div class="form-group">
                <label for="fecha_nacimiento">Fecha de inicio</label>
                <input type="date" name="inicio" value="{{$promocion->inicio}}" required="true" placeholder="12/02/1994" id="fecha_nacimiento" class="form-control">
            </div>

            <div class="form-group">
                <label for="fecha_nacimiento">Fecha final</label>
                <input type="date" name="fin" required="true" placeholder="12/02/1994" value="{{$promocion->fin}}" id="fecha_nacimiento" class="form-control">
            </div>

            {!! Form::submit('Registrar', ['class'=>'btn btn-primary', 'type'=>'button']) !!}
            {!! Form::close() !!}
        </div>
    </div>
@endsection()