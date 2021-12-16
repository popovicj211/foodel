<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Ingredient extends Model
{
    use HasFactory;

    protected $fillable = [
        'name'
    ];

    public function restaurantfoods(){
        return $this->belongsToMany(RestaurantFood::class , 'restfood_ingredients' , 'ing_id' , 'resfood_id');
    }
}
