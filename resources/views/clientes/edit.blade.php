@extends('template.main')
@section('title','Actualizar Clientes')
@section('htmlcore')
    <div class="row">
        <div class="col-md-3">
            <h1>Actualizar datos de los clientes</h1>
        </div>
        <div class="col-md-3">
            <img src="{{asset('img/metros.jpg')}}" alt="" class=" img-circle img-responsive">
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            {!! Form::open(['route'=>['clientes.update',$cliente],'method'=>'PUT']) !!}
            {!! Form::token() !!}
            <div class="form-group">
                <label for="nombre">Nombre</label>
                <input type="text" name="nombre" value="{{$cliente->nombre}}" required="true" placeholder="Nombre" id="nombre" class="form-control">
            </div>

            <div class="form-group">
                <label for="apellidos">Apellidos</label>
                <input type="text" name="apellidos" value="{{$cliente->apellidos}}" required="true" placeholder="Apellidos" id="apellidos" class="form-control">
            </div>

            <div class="form-group">
                {!! Form::label('edades', 'Seleccione una edad', []) !!}
                {!! Form::select('edad', $edades,$cliente->edad, ['class'=>'form-control','id'=>'edades']) !!}
            </div>

            <div class="form-group">
                <label for="email">Correo Electronico</label>
                <input type="email" name="email" value="{{$cliente->email}}" required="true" placeholder="nombre@correo.com" id="email" class="form-control">
            </div>

            <div class="form-group">
                <label for="Telefono">Telefono Celular</label>
                <input type="tel" name="telefono" value="{{$cliente->telefono}}" required="true"  placeholder="9878715620" id="Telefono" class="form-control" maxlength="10" value="9878715620">
            </div>

            <div class="form-group">
                <label for="facebook">Facebook</label>
                <input type="text" name="facebook" value="{{$cliente->facebook}}" required="true" placeholder="facebook" id="facebook" class="form-control">
            </div>

            <div class="form-group">
                <label for="bebida">Bebida</label>
                <input type="text" name="bebida" value="{{$cliente->bebida}}" required="true" placeholder="bebida" id="bebida" class="form-control">
            </div>
            <div class="form-group">
                <label for="fecha_nacimiento">Fecha de nacimiento</label>
                <input type="date" name="fecha_nacimiento" value="{{$cliente->fecha_nacimiento}}" required="true" placeholder="12/02/1994" id="fecha_nacimiento" class="form-control">
            </div>

            {!! Form::submit('Actualizar', ['class'=>'btn btn-primary', 'type'=>'button']) !!}
            {!! Form::close() !!}
        </div>
    </div>
@endsection()