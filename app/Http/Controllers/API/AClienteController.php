<?php

namespace App\Http\Controllers\API;

use App\Cliente;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class AClienteController extends Controller
{
    //
    public function getDataCliente($id)
    {
        $cliente= Cliente::where('codigo_cliente',$id)->get();
         return response()->json($cliente);
    }
}
