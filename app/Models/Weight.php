<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Weight extends Model
{
    protected $fillable = [
        'number',
    ];


    public function pricelist_restaurantfoods(){
        return $this->belongsToMany( RestaurantFood::class, 'pricelist' , 'we_id' , 'resfood_id' )->withPivot('price', 'id');
    }

}
