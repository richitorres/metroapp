<?php

namespace App\Http\Controllers;

use App\Cliente;
use Illuminate\Http\Request;

class ClientesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $clientes= Cliente::orderBy('created_at','DESC')->paginate(25);
        return view('clientes.main')->with('clientes',$clientes);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        $edades=[];
        for ($i=18;$i<70;$i++)
        {
            $edades+=[
                $i=>$i
            ];
        }
        return view('clientes.create')->with('edades',$edades);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $cliente= new Cliente();
        $codigo_cliente= $this->generateCode($request);
        $cliente->nombre= $request->nombre;
        $cliente->apellidos= $request->apellidos;
        $cliente->edad= $request->edad;
        $cliente->facebook= $request->facebook;
        $cliente->bebida= $request->bebida;
        $cliente->fecha_nacimiento= $request->fecha_nacimiento;
        $cliente->telefono= $request->telefono;
        $cliente->email= $request->email;
        $cliente->codigo_cliente= $codigo_cliente;
        $cliente->save();
        return redirect()->route('clientes.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        $cliente= Cliente::find($id);
        return view('clientes.view')->with('cliente',$cliente);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
        $edades=[];
        for ($i=18;$i<70;$i++)
        {
            $edades+=[
                $i=>$i
            ];
        }
        $cliente= Cliente::find($id);
        return view('clientes.edit')->with('edades',$edades)->with('cliente',$cliente);

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $codigo= $this->generateCode($request);
        $cliente= Cliente::find($id);
        $cliente->nombre= $request->nombre;
        $cliente->apellidos= $request->apellidos;
        $cliente->edad= $request->edad;
        $cliente->facebook= $request->facebook;
        $cliente->bebida= $request->bebida;
        $cliente->fecha_nacimiento= $request->fecha_nacimiento;
        $cliente->telefono= $request->telefono;
        $cliente->email= $request->email;
        $cliente->save();
        return  redirect()->route('clientes.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        $cliente= Cliente::find($id);
        $cliente->delete();
        return redirect()->back();
    }

    private function generateCode($request)
    {
        $ini_name= substr($request->nombre,0,3);
        $ini_name= $ini_name.substr($request->apellidos,0,3);
        $codigo='';
        $caracteres='0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $size_char= strlen($caracteres);
        for($i=0; $i<7; $i++)
        {
            $codigo.=$caracteres[rand(0,$size_char-1)];
        }
        //$date= \Carbon\Carbon::now()->format('d/m/Y');
        $ini_name=$ini_name.$codigo;
        //$codigo= $codigo.$ini_name;
        return $ini_name;
    }
}
