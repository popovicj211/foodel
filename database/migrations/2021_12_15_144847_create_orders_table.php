<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->integer('order_number')->unsigned();
            $table->unsignedBigInteger('user_id');
            $table->unsignedBigInteger('mp_id');
            $table->unsignedBigInteger('resfood_id');
            $table->foreign('user_id')->references('id')->on('users')->onDelete('cascade');
            $table->foreign('mp_id')->references('id')->on('method_payment');
            $table->foreign('resfood_id')->references('id')->on('restaurants_foods');
            $table->integer('quantity')->unsigned();
            $table->decimal('total')->unsigned();
            $table->timestamp('order_date');
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
        Schema::dropIfExists('orders');
    }
}
