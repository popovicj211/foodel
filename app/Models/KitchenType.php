<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KitchenType extends Model
{
    use HasFactory;

    protected $table = 'kitchen_type';

    protected $fillable = [
        'name'
    ];

    public function restaurants(){
        return $this->belongsToMany(Restaurant::class);
    }
}
