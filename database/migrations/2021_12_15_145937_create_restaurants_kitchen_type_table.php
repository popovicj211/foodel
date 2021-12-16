<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRestaurantsKitchenTypeTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('restaurants_kitchen_type', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('res_id');
            $table->unsignedBigInteger('kit_id');
            $table->foreign('res_id')->references('id')->on('restaurants')->onDelete('cascade');
            $table->foreign('kit_id')->references('id')->on('kitchen_type')->onDelete('cascade');
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
        Schema::dropIfExists('restaurants_kitchen_type');
    }
}
