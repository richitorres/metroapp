<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Cliente extends Model
{
    //
    protected $table='clientes';
    protected $fillable=['nombre','apellidos','codigo_cliente','email','telefono','edad','fecha_nacimiento','facebook','bebida'];

    public function promocion()
    {
        return $this->belongsTo('App\Promocion');
    }

}
