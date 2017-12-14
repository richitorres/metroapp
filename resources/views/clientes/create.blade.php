@extends('template.main')
@section('title','Formulario Clientes')
@section('htmlcore')
    <div class="row">
        <div class="col-md-3">
            <h1>Registro de clientes</h1>
        </div>
        <div class="col-md-3">
            <img src="{{asset('img/metros.jpg')}}" alt="" class=" img-circle img-responsive">
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            {!! Form::open(['route'=>'clientes.store','method'=>'POST']) !!}
             {!! Form::token() !!}
            <div class="form-group">
                <label for="nombre">Nombre</label>
                <input type="text" name="nombre" required="true" placeholder="Nombre" id="nombre" class="form-control">
            </div>

            <div class="form-group">
                <label for="apellidos">Apellidos</label>
                <input type="text" name="apellidos" required="true" placeholder="Apellidos" id="apellidos" class="form-control">
            </div>

            <div class="form-group">
                {!! Form::label('edades', 'Seleccione una edad', []) !!}
                {!! Form::select('edad', $edades,null, ['class'=>'form-control','id'=>'edades']) !!}
            </div>

            <div class="form-group">
                <label for="email">Correo Electronico</label>
                <input type="email" name="email" required="true" placeholder="nombre@correo.com" id="email" class="form-control">
            </div>

            <div class="form-group">
                <label for="Telefono">Telefono Celular</label>
                <input type="tel" name="telefono" required="true" placeholder="9878715620" id="Telefono" class="form-control" maxlength="10" value="">
            </div>

            <div class="form-group">
                <label for="facebook">Facebook</label>
                <input type="text" name="facebook" required="true" placeholder="facebook" id="facebook" class="form-control" value="pendiente">
            </div>

            <div class="form-group">
                <label for="bebida">Bebida</label>
                <input type="text" name="bebida" required="true" placeholder="bebida" id="bebida" class="form-control" value="Ron">
            </div>
            <div class="form-group">
                <label for="fecha_nacimiento">Fecha de nacimiento</label>
                <input type="date" name="fecha_nacimiento" required="true" placeholder="12/02/1994" id="fecha_nacimiento" class="form-control">
            </div>

            {!! Form::submit('Registrar', ['class'=>'btn btn-primary', 'type'=>'button']) !!}
            {!! Form::close() !!}
        </div>
    </div>
@endsection()