<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class RestaurantKitchenType extends Model
{
    protected $table = 'restaurants_kitchen_type';
    protected $fillable = [
        'res_id' , 'kit_id'
    ];
}
