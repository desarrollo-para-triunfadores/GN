<?php

use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class MigracionConfigs extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
                        
        Schema::create('configs', function (Blueprint $table) {
            $table->increments('id');
            $table->string('nombre');
            $table->string('cuit');
            $table->string('telefono');
            $table->string('email');
            $table->string('direccion');
            $table->string('imagen');
            $table->integer('responiva_id')->unsigned();
            $table->foreign('responiva_id')->references('id')->on('responiva')->onDelete('cascade');
            $table->integer('localidad_id')->unsigned();            

            $table->foreign('localidad_id')->references('id')->on('localidades')->onDelete('cascade');
            $table->boolean('permitir_cheque_consumidor_final');    //si esta en 'true' se permite pagar con cheques a consumidores finales
            $table->boolean('permitir_ventas_sin_stock');   //si esta en 'true' no se controla si hay stock de insumos para tomar un pedido
            $table->boolean('ingresar_preciovta');  //si esta en 'true' no se busca el precio de venta de un articulo en toma de pedidos, se ingresa manualmente
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
        Schema::drop('configs');
    }
}
