<?php

namespace Database\Factories;

use App\Models\Restaurant;
use App\Models\Weight;
use Illuminate\Database\Eloquent\Factories\Factory;

class WeightFactory extends Factory
{
    protected $model = Weight::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'number' => rand(100 , 500),
            'created_at' => now()
        ];
    }
}
