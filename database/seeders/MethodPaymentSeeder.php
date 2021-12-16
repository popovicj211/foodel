<?php

namespace Database\Seeders;

use App\Models\MethodPayment;
use Illuminate\Database\Seeder;

class MethodPaymentSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $methods = ["Credit card" , "Paypal"];

        for ($i = 0; $i < count($methods); $i++){
            MethodPayment::create([
                'name' => $methods[$i]
            ]);
        }
    }
}
