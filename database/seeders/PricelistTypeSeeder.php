<?php

namespace Database\Seeders;

use App\Models\Pricelist;
use Illuminate\Database\Seeder;

class PricelistTypeSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Pricelist::factory()->count(3)->create();
    }
}
