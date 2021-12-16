<?php

namespace Database\Factories;

use App\Models\Food;
use App\Models\Restaurant;
use App\Models\RestaurantFood;
use Illuminate\Database\Eloquent\Factories\Factory;

class RestaurantFoodFactory extends Factory
{
    protected $model = RestaurantFood::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'res_id' => Restaurant::all()->random()->id,
            'food_id' => Food::all()->random()->id,
            'image' =>  'image.jpg',
            'created_at' => now()
        ];
    }
}
