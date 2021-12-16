<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Deliver extends Model
{
    protected $fillable = [
        'delivery_number' , 'delivery_date' , 'price'
    ];

    public function orders(){
        return $this->belongsToMany(Order::class);
    }

}
