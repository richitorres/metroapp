<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddClientes extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('clientes', function (Blueprint $table) {
            //
            $table->increments('id');
            $table->string('nombre');
            $table->string('apellidos');
            $table->string('codigo_cliente')->unique();
            $table->string('email')->unique();
            $table->string('telefono')->unique();
            $table->string('facebook')->nullable();
            $table->string('bebida')->default('whisky');
            $table->integer('edad');
            $table->date('fecha_nacimiento');
            $table->timestamps();
        });
    }
    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('clientes', function (Blueprint $table) {
            //
        });
    }


}
