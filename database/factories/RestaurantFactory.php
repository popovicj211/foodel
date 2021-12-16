<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class RestaurantFactory extends Factory
{
    /**
     * Define the model's default state.
     *
     * @return array
     */
    public function definition()
    {
        return [
             'name' => $this->faker->title(),
              'image' => 'image.jpg',
              'address' => $this->faker->streetAddress()
        ];
    }
}
$table->string('name');
$table->string('image');
$table->string('address');
$table->string('hours');
