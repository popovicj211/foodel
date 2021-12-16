<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class KitchenType extends Model
{
    protected $fillable = [
        'name'
    ];

    public function restaurants(){
        return $this->belongsToMany(Restaurant::class);
    }
}
