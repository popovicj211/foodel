<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Pricelist extends Model
{
    protected $table = 'pricelist';
    protected $fillable = [
        'resfood_id' , 'we_id' , 'price'
    ];


    public function restaurantfoods(){
        return $this->belongsTo(RestaurantFood::class );
    }

    public function weight(){
        return $this->belongsTo(Weight::class );
    }
}
