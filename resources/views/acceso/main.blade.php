@extends('template.main')
@section('title','Acceso-Metropolitan')
@section('htmlcore')
    <h2>Acceso al Metropolitan</h2>
    <div class="row">
        <div class="col-md-4">
            <div class="form-group">
                <input type="text" autofocus id="inputcode" placeholder="Codigo de Acceso" class="form-control" maxlength="13">
            </div>
        </div>

        <div class="col-md-3">
            <button class="btn btn-primary" id="clearbutton">Limpiar</button>
        </div>
    </div>
    <hr>
    <div class="row">
        <div class="col-md-5">
            <h3><span class="glyphicon glyphicon-user"></span>Nombre: <p id="cnombre"> </p></h3>
        </div>
        <div class="col-md-5">
            <h3><span class="glyphicon glyphicon-music"></span>Apellido: <p id="capellido"> </p></h3>
        </div>
    </div>
    <br>
    <div class="row">
        <div class="col-md-5">
            <h3> <span class="glyphicon glyphicon-envelope"></span>Email: <p id="cemail"> </p></h3>
        </div>
        <div class="col-md-3">
            <h3><span class="glyphicon glyphicon-heart"></span>Facebook: <p id="cfacebook"> </p></h3>
        </div>

    </div>
    <br>
    <div class="row">
        <div class="col-md-3">
            <h3><span class="glyphicon glyphicon-earphone"></span>Telefono: <p id="ctelefono"> </p></h3>
        </div>
    </div>
@endsection()
