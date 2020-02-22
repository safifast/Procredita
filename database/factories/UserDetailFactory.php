<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\Models\Admin\UserDetail;
use Faker\Generator as Faker;

$factory->define(UserDetail::class, function (Faker $faker) {

    return [
        'loan_amount' => $faker->randomDigitNotNull,
        'loan_duration' => $faker->randomDigitNotNull,
        'monthly_replayment' => $faker->randomDigitNotNull,
        'total_replayment' => $faker->randomDigitNotNull,
        'total_interest' => $faker->randomDigitNotNull,
        'p_d_title' => $faker->word,
        'p_d_fName' => $faker->word,
        'p_d_lName' => $faker->word,
        'p_d_mName' => $faker->word,
        'p_d_dateOfBirth' => $faker->word,
        'p_d_noOfDependents' => $faker->randomDigitNotNull,
        'c_d_email' => $faker->word,
        'c_d_phone' => $faker->word,
        'c_d_currentAddress' => $faker->word,
        'c_d_liveDucation' => $faker->word,
        'c_d_residencial' => $faker->word,
        'c_d_createPassword' => $faker->word,
        'y_i_emplymentStatus' => $faker->word,
        'y_i_emplyerName' => $faker->word,
        'y_i_jobTitle' => $faker->word,
        'y_i_phoneNumber' => $faker->word,
        'y_i_paidTime' => $faker->word,
        'y_i_paidWay' => $faker->word,
        'b_a_accountName' => $faker->word,
        'b_a_accountNumber' => $faker->word,
        'b_a_bankName' => $faker->word,
        'b_a_bvn' => $faker->word,
        'b_a_accountOld' => $faker->word,
        'b_a_phoneNumber' => $faker->word,
        'gov_issue_file_path' => $faker->word,
        'utility_bill_file_path' => $faker->word,
        'bank_statement_path' => $faker->word,
        'created_at' => $faker->date('Y-m-d H:i:s'),
        'updated_at' => $faker->date('Y-m-d H:i:s')
    ];
});
