<!doctype html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>@yield('title','Default')|Metro</title>
    <link rel="stylesheet" href="{{asset('plugins/bootstrap/css/bootstrap.css')}}">
    <link href="https://fonts.googleapis.com/css?family=Raleway:100,600" rel="stylesheet" type="text/css">
    <script src="{{URL::asset('js/jquery-3.1.1.js')}}"></script>
    <script src="{{URL::asset('plugins/bootstrap/js/bootstrap.js')}}"></script>
</head>
<body>
<header>
    @include('partials.navbar')
</header>
<div class="container">
    @yield('htmlcore')
</div>
<script src="{{URL::asset('js/main.js')}}"></script>
<script src="{{URL::asset('js/api.js')}}"></script>
</body>
</html>