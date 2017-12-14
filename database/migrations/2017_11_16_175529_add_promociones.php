<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class AddPromociones extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('promociones', function (Blueprint $table) {
            //
            $table->increments('id');
            $table->string('nombre')->unique();
            $table->text('descripcion');
            $table->string('codigo_promo')->unique();
            $table->date('inicio');
            $table->date('fin');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('promociones', function (Blueprint $table) {
            //
        });
    }


}
