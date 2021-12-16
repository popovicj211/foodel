<?php

namespace Database\Factories;

use App\Models\KitchenType;
use Illuminate\Database\Eloquent\Factories\Factory;

class KitchenTypeFactory extends Factory
{

    protected $model = KitchenType::class;

    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
            'name' => $this->faker->name(),
            'created_at' => now()
        ];
    }
}
