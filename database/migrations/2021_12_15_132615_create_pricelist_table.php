<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePricelistTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pricelist', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('resfood_id');
            $table->unsignedBigInteger('we_id');
            $table->foreign('resfood_id')->references('id')->on('restaurants_foods')->onDelete('cascade');
            $table->foreign('we_id')->references('id')->on('weight')->onDelete('cascade');
            $table->decimal('price');
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
        Schema::dropIfExists('pricelist');
    }
}
