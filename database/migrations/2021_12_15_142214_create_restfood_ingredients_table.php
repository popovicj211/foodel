<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRestfoodIngredientsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('restfood_ingredients', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('resfood_id');
            $table->unsignedBigInteger('ing_id');
            $table->foreign('resfood_id')->references('id')->on('restaurants_foods')->onDelete('cascade');
            $table->foreign('ing_id')->references('id')->on('ingredients')->onDelete('cascade');
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
        Schema::dropIfExists('restfood_ingredients');
    }
}
