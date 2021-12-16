<?php

namespace App\Models;

//use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Food extends Model
{
    protected $fillable = [
        'name'
    ];


  /*  public function restaurants(){
        return $this->belongsToMany(Restaurant::class , 'restaurants_foods' , 'food_id' , 'res_id');
    }
*/
    public function restaurantsfoods_restaurants(){
        return $this->belongsToMany( Restaurant::class, 'restaurants_foods' , 'food_id' , 'res_id' )->withPivot('image', 'id');
    }

}
