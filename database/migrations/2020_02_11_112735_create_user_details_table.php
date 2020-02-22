<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class CreateUserDetailsTable extends Migration
{

    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_details', function (Blueprint $table) {
            $table->increments('id');
            $table->integer('user_id');
            $table->integer('loan_amount');
            $table->integer('loan_duration');
            $table->integer('monthly_replayment');
            $table->integer('total_replayment');
            $table->integer('total_interest');
            $table->string('p_d_title');
            $table->string('p_d_fName');
            $table->string('p_d_lName');
            $table->string('p_d_mName');
            $table->date('p_d_dateOfBirth');
            $table->integer('p_d_noOfDependents');
            $table->string('c_d_phone');
            $table->string('c_d_currentAddress');
            $table->string('c_d_liveDucation');
            $table->string('c_d_residencial', 20);
            $table->string('y_i_emplymentStatus');
            $table->string('y_i_emplyerName');
            $table->string('y_i_jobTitle');
            $table->string('y_i_phoneNumber');
            $table->string('y_i_paidTime');
            $table->string('y_i_paidWay');
            $table->string('b_a_accountName');
            $table->string('b_a_accountNumber');
            $table->string('b_a_bankName');
            $table->string('b_a_bvn');
            $table->string('b_a_accountOld');
            $table->string('b_a_phoneNumber');
            $table->string('gov_issue_file_path');
            $table->string('utility_bill_file_path');
            $table->string('bank_statement_path');
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('user_details');
    }
}
