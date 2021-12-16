<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class RestaurantFood extends Model
{
    protected $table = 'restaurants_foods';
    protected $fillable = [
        'res_id' , 'food_id' , 'image'
    ];

    public function foods(){
        return $this->belongsTo(Food::class );
    }

    public function restaurants(){
        return $this->belongsTo(Restaurant::class );
    }


    public function ingredients(){
        return $this->belongsToMany(Ingredient::class , 'restfood_ingredients' , 'resfood_id' , 'ing_id');
    }

    public function pricelist_weight(){
        return $this->belongsToMany( Weight::class, 'pricelist' , 'resfood_id' , 'we_id' )->withPivot('price', 'id');
    }


    public function orders(){
        return $this->hasMany(Order::class );

    }

}
