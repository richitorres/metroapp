<?php

namespace App\Http\Controllers\API;

use App\Promocion;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;

class APromocionController extends Controller
{
    //
    public function getDataPromocion($id)
    {
        $promocion= Promocion::where('codigo_promo',$id)->get();
        return response()->json($promocion);
    }
}
