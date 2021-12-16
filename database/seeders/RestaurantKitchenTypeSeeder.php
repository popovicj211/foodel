<?php

namespace Database\Seeders;

use App\Models\RestaurantKitchenType;
use Illuminate\Database\Seeder;

class RestaurantKitchenTypeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        RestaurantKitchenType::factory()->count(3)->create();
    }
}
