<?php

namespace Database\Factories;

use App\Models\KitchenType;
use App\Models\Restaurant;
use App\Models\RestaurantKitchenType;
use Illuminate\Database\Eloquent\Factories\Factory;

class RestaurantKitchenTypeFactory extends Factory
{
    protected $model = RestaurantKitchenType::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'res_id' => Restaurant::all()->random()->id,
            'kit_id' => KitchenType::all()->random()->id,
            'created_at' => now()
        ];
    }
}
