<?php

namespace Database\Seeders;

use App\Models\KitchenType;
use Illuminate\Database\Seeder;

class KitchenTypeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        KitchenType::factory()->count(3)->create();
    }
}
