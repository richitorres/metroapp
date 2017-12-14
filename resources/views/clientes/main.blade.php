@extends('template.main')
@section('title','Main-Client')
@section('htmlcore')

    <div class="row">
        <div class="col-md-3">
            <h1>Clientes: </h1>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3">
            <a href="{{route('clientes.create')}}"class="btn btn-primary">Crear Cliente</a>
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
            <table class=" table table-bordered">
                <thead>
                <tr>
                    <th>Codigo</th>
                    <th>Nombre</th>
                    <th>Apellidos</th>
                    <th>Facebook</th>
                    <th>Bebida</th>
                    <th>Email</th>
                    <th>Telefono</th>
                    <th>Acciones</th>
                </tr>
                </thead>
                <tbody id="mitabla">
                @foreach($clientes as $cliente)
                    <tr>
                        <td>{{$cliente->codigo_cliente}}</td>
                        <td>{{$cliente->nombre}}</td>
                        <td>{{$cliente->apellidos}}</td>
                        <td>{{$cliente->facebook}}</td>
                        <td>{{$cliente->bebida}}</td>
                        <td>{{$cliente->email}}</td>
                        <td>{{$cliente->telefono}}</td>
                        <td>
                            <a href="" class="btn btn-default glyphicon glyphicon-eye-open"></a>
                            <a href="{{route('clientes.edit',$cliente->id)}}" class="btn btn-warning glyphicon glyphicon-pencil"></a>
                            <a href="{{route('sendmailclient',$cliente->id)}}" class="btn btn-primary glyphicon glyphicon-send"></a>
                            <a href="{{route('clientes.destroy',$cliente->id)}}" class="btn btn-danger glyphicon glyphicon-trash"></a>
                        </td>
                    </tr>
                    @endforeach()
                </tbody>
            </table>
            {!! $clientes->render() !!}
        </div>
    </div>


@endsection()