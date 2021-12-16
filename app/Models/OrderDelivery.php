<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class OrderDelivery extends Model
{

    protected $table = 'orders_delivery';
    protected $fillable = [
        'order_id' , 'del_id'
    ];

}
