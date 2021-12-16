<?php

namespace App\Models;


use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $fillable = [
        'order_number' , 'user_id' , 'mp_id' , 'resfood_id', 'quantity' , 'total' , 'order_date'
    ];

    public function delivery(){
        return $this->belongsToMany(Deliver::class);
    }
    public function methodpayments()
    {
        return $this->belongsTo(MethodPayment::class);
    }

    public function users()
    {
        return $this->belongsTo(User::class);
    }

    public function restaurantfoods()
    {
        return $this->belongsTo(RestaurantFood::class);
    }

}
