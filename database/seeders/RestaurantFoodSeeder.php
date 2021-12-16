<?php

namespace Database\Seeders;

use App\Models\RestaurantFood;
use Illuminate\Database\Seeder;

class RestaurantFoodSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        RestaurantFood::factory()->count(3)->create();
    }
}
