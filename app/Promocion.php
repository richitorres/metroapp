<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Promocion extends Model
{
    //
    protected  $table='promociones';
    protected  $fillable=['nombre','descripcion','codigo_promo','inicio','fin'];

    public $timestamps= false;

    public function clientes()
    {
        return $this->hasMany('App\Cliente');
    }

}
