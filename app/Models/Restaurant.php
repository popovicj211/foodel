<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Restaurant extends Model
{
    use HasFactory;
    protected $fillable = [
        'name' , 'image' , 'address', 'hours'
    ];


    public function restaurantsfoods_foods()
    {
        return $this->belongsToMany(Food::class , 'restaurants_foods' , 'res_id' , 'food_id')->withPivot('image', 'id');
    }
/*
    public function kitchentypes(){
        return $this->belongsToMany(KitchenType::class , 'restaurants_kitchen_type' , 'res_id' , 'kit_id');
    }
*/
    public function kitchentypes(){
        return $this->belongsToMany(KitchenType::class);
    }

}
