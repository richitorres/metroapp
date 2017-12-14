@extends('template.main')
@section('title','Promociones')
@section('htmlcore')
    <div class="row">
        <div class="col-md-3">
            <h1>Promociones: <a href="{{route('validarpromo')}}" class="btn btn-success"><span class=" glyphicon glyphicon-search "></span>Validar Promocion</a> </h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3">
            <a href="{{route('promociones.create')}}"class="btn btn-primary">Crear Promocion</a>
        </div>
    </div>
    <hr>
    <div class="row">
        <div class="col-md-4">
            <input type="text" placeholder="Buscar" id="inputsearch" class="form-control">
        </div>
    </div>
    <br>
    <div class="row">
        <div class="col-md-12">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Codigo</th>
                        <th>Nombre</th>
                        <th>Descripcion</th>
                        <th>Fecha Inicio</th>
                        <th>Fecha Fin</th>
                        <th>Estatus</th>
                        <th>acciones</th>
                    </tr>
                </thead>
                <tbody id="mitabla">
                @foreach($promociones as $promocion)
                    <tr>
                        <td>{{$promocion->codigo_promo}}</td>
                        <td>{{$promocion->nombre}}</td>
                        <td>{{$promocion->descripcion}}</td>
                        <td>{{$promocion->inicio}}</td>
                        <td>{{$promocion->fin}}</td>
                        <td>
                            @if($promocion->fin===\Carbon\Carbon::now()->format('Y-m-d'))
                                    <p>Promocion Valida</p>
                            @else()
                                    <p>No Valida</p>
                            @endif()
                        </td>

                        <td>
                            <a href="" class="btn btn-default glyphicon glyphicon-eye-open"></a>
                            <a href="{{route('promociones.edit',$promocion->id)}}" class="btn btn-warning glyphicon glyphicon-pencil"></a>
                            <a href="{{route('sendmailpromocion',$promocion->id)}}" class="btn btn-primary glyphicon glyphicon-send"></a>
                            <a href="{{route('promociones.destroy',$promocion->id)}}" class="btn btn-danger glyphicon glyphicon-trash"></a>
                        </td>
                    </tr>
                    @endforeach()
                </tbody>
            </table>
        </div>
    </div>
@endsection()