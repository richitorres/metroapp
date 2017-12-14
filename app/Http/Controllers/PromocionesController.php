<?php

namespace App\Http\Controllers;

use App\Promocion;
use Illuminate\Http\Request;

class PromocionesController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $promociones= Promocion::all();
        return view('promociones.main')->with('promociones',$promociones);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
        return view('promociones.create');
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
        $promocion= new Promocion();
        $promocion->nombre= $request->nombre;
        $promocion->codigo_promo= $this->generateCode();
        $promocion->descripcion= $request->descripcion;
        $promocion->inicio= $request->inicio;
        $promocion->fin= $request->fin;
        $promocion->save();
        return  redirect()->route('promociones.index');
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
        $promocion= Promocion::find($id);
        return view('promociones.show')->with('promocion',$promocion);
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
        $promocion= Promocion::find($id);
        return view('promociones.edit')->with('promocion',$promocion);

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
        $promocion= Promocion::find($id);
        $promocion->nombre= $request->nombre;
        //$promocion->codigo_promo= $this->generateCode($request->nombre);
        $promocion->descripcion= $request->descripcion;
        $promocion->inicio= $request->inicio;
        $promocion->fin= $request->fin;
        $promocion->save();
        return redirect()->route('promociones.index');
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
        $promocion= Promocion::find($id);
        $promocion->delete();
        return redirect()->back();
    }

    private function generateCode()
    {
        //$ini_name= substr($request->nombre,0,3);
        //$ini_name= $ini_name.substr($request->apellidos,0,3);
        $codigo='';
        $caracteres='0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $size_char= strlen($caracteres);
        for($i=0; $i<10; $i++)
        {
            $codigo.=$caracteres[rand(0,$size_char-1)];
        }
        //$date= \Carbon\Carbon::now()->format('d/m/Y');
        //dd($codigo);
        //$codigo= $codigo.$ini_name;
        return $codigo;
    }

    public function validarPromocion()
    {
        return view('acceso.promocion');
    }

}
