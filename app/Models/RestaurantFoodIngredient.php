<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class RestaurantFoodIngredient extends Model
{
    protected $table = 'restfood_ingredients';
    protected $fillable = [
        'resfood_id' , 'ing_id'
    ];
}
