@extends('template.main')
@section('title','Promociones-Metropolitan')
@section('htmlcore')
    <h2>Validacion de promocion</h2>
    <div class="row">
        <div class="col-md-4">
            <div class="form-group">
                <input type="text" autofocus id="inputpromo" placeholder="Codigo de promocion" class="form-control" maxlength="10">
            </div>
        </div>

        <div class="col-md-3">
            <button class="btn btn-primary" id="clearbutton">Limpiar</button>
        </div>
    </div>
    <hr>
    <div class="row">
        <div class="col-md-5">
            <h3><span class="glyphicon glyphicon-star"></span>Nombre: <p id="pnombre"> </p></h3>
        </div>

    </div>
    <div class="row">
        <div class="col-md-12">
            <h3>
                <label for="pdescripcion"><span class="glyphicon glyphicon-heart"></span>Descripcion</label>
            </h3>
            <textarea name="" id="pdescripcion" cols="150" rows="8"></textarea>
        </div>
    </div>
    <br>
    <div class="row">
        <div class="col-md-5">
            <h3> <span class="glyphicon glyphicon-calendar"></span>Fecha de Inicio: <p id="pinicio"> </p></h3>
        </div>
        <div class="col-md-3">
            <h3><span class="glyphicon glyphicon-calendar"></span>Fecha Fin: <p id="pfinal"> </p></h3>
        </div>

    </div>
    <br>
@endsection()
