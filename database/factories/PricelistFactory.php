<?php

namespace Database\Factories;

use App\Models\Pricelist;
use App\Models\RestaurantFood;
use App\Models\Weight;
use Illuminate\Database\Eloquent\Factories\Factory;

class PricelistFactory extends Factory
{

    protected $model = Pricelist::class;
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'resfood_id' => RestaurantFood::all()->random()->id,
            'we_id' => Weight::all()->random()->id,
            'price' => $this->faker->randomFloat(1.00,  10.00),
            'created_at' => now()
        ];
    }
}
