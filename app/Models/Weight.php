<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Weight extends Model
{
    use  HasFactory;

    protected $table = "weight";
    protected $fillable = [
        'number',
    ];


    public function pricelist_restaurantfoods(){
        return $this->belongsToMany( RestaurantFood::class, 'pricelist' , 'we_id' , 'resfood_id' )->withPivot('price', 'id');
    }

}
