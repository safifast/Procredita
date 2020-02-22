<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\Admin\History;
use Faker\Generator as Faker;

$factory->define(History::class, function (Faker $faker) {

    return [
        'loan_amount' => $faker->randomDigitNotNull,
        'user_id' => $faker->randomDigitNotNull,
        'file_size' => $faker->randomDigitNotNull,
        'created_at' => $faker->date('Y-m-d H:i:s'),
        'updated_at' => $faker->date('Y-m-d H:i:s')
    ];
});
