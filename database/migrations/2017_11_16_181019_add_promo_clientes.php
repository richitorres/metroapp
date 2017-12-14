<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddPromoClientes extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('promo_clientes', function (Blueprint $table) {
            //
            $table->integer('id_cliente')->unsigned();
            $table->integer('id_promo')->unsigned();
            $table->foreign('id_cliente')->references('id')->on('clientes');
            $table->foreign('id_promo')->references('id')->on('promociones');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('promo_clientes', function (Blueprint $table) {
            //
        });
    }


}
