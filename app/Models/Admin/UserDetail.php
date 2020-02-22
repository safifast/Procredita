<?php

namespace App\Models\Admin;

use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class UserDetail
 * @package App\Models\Admin
 * @version February 11, 2020, 11:27 am UTC
 *
 * @property integer loan_amount
 * @property integer loan_duration
 * @property integer monthly_replayment
 * @property integer total_replayment
 * @property integer total_interest
 * @property string p_d_title
 * @property string p_d_fName
 * @property string p_d_lName
 * @property string p_d_mName
 * @property string p_d_dateOfBirth
 * @property integer p_d_noOfDependents
 * @property string c_d_email
 * @property string c_d_phone
 * @property string c_d_currentAddress
 * @property string c_d_liveDucation
 * @property string c_d_residencial
 * @property string y_i_emplymentStatus
 * @property string y_i_emplyerName
 * @property string y_i_jobTitle
 * @property string y_i_phoneNumber
 * @property string y_i_paidTime
 * @property string y_i_paidWay
 * @property string b_a_accountName
 * @property string b_a_accountNumber
 * @property string b_a_bankName
 * @property string b_a_bvn
 * @property string b_a_accountOld
 * @property string b_a_phoneNumber
 * @property string gov_issue_file_path
 * @property string utility_bill_file_path
 * @property string bank_statement_path
 */
class UserDetail extends Model
{
    use SoftDeletes;

    public $table = 'user_details';
    

    protected $dates = ['deleted_at'];



    public $fillable = [
        'loan_amount',
        'loan_duration',
        'monthly_replayment',
        'total_replayment',
        'total_interest',
        'p_d_title',
        'user_id',
        'p_d_fName',
        'p_d_lName',
        'p_d_mName',
        'p_d_dateOfBirth',
        'p_d_noOfDependents',
        'c_d_phone',
        'c_d_currentAddress',
        'c_d_liveDucation',
        'c_d_residencial',
        'y_i_emplymentStatus',
        'y_i_emplyerName',
        'y_i_jobTitle',
        'y_i_phoneNumber',
        'y_i_paidTime',
        'y_i_paidWay',
        'b_a_accountName',
        'b_a_accountNumber',
        'b_a_bankName',
        'b_a_bvn',
        'b_a_accountOld',
        'b_a_phoneNumber',
        'gov_issue_file_path',
        'utility_bill_file_path',
        'bank_statement_path'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'loan_amount' => 'integer',
        'loan_duration' => 'integer',
        'monthly_replayment' => 'integer',
        'total_replayment' => 'integer',
        'total_interest' => 'integer',
        'p_d_title' => 'string',
        'user_id' => 'integer',
        'p_d_fName' => 'string',
        'p_d_lName' => 'string',
        'p_d_mName' => 'string',
        'p_d_dateOfBirth' => 'date',
        'p_d_noOfDependents' => 'integer',
        'c_d_phone' => 'string',
        'c_d_currentAddress' => 'string',
        'c_d_liveDucation' => 'string',
        'c_d_residencial' => 'string',
        'y_i_emplymentStatus' => 'string',
        'y_i_emplyerName' => 'string',
        'y_i_jobTitle' => 'string',
        'y_i_phoneNumber' => 'string',
        'y_i_paidTime' => 'string',
        'y_i_paidWay' => 'string',
        'b_a_accountName' => 'string',
        'b_a_accountNumber' => 'string',
        'b_a_bankName' => 'string',
        'b_a_bvn' => 'string',
        'b_a_accountOld' => 'string',
        'b_a_phoneNumber' => 'string',
        'gov_issue_file_path' => 'string',
        'utility_bill_file_path' => 'string',
        'bank_statement_path' => 'string'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        'loan_amount' => 'required|numeric',
        'loan_duration' => 'required|numeric',
        'monthly_replayment' => 'required|numeric',
        'total_replayment' => 'required|numeric',
        'total_interest' => 'required|numeric',
        'p_d_title' => 'required|string',
        'user_id' => 'required|integer',
        'p_d_fName' => 'required|string',
        'p_d_lName' => 'required|string',
        'p_d_mName' => 'required|string',
        'p_d_dateOfBirth' => 'required|date',
        'p_d_noOfDependents' => 'required|numeric',
        'c_d_phone' => 'required|string',
        'c_d_currentAddress' => 'required|string',
        'c_d_liveDucation' => 'required|string',
        'c_d_residencial' => 'required|string',
        'y_i_emplymentStatus' => 'required|string',
        'y_i_emplyerName' => 'required|string',
        'y_i_jobTitle' => 'required|string',
        'y_i_phoneNumber' => 'required|string',
        'y_i_paidTime' => 'required|string',
        'y_i_paidWay' => 'required|string',
        'b_a_accountName' => 'required|string',
        'b_a_accountNumber' => 'required|string',
        'b_a_bankName' => 'required|string',
        'b_a_bvn' => 'required|string',
        'b_a_accountOld' => 'required|string',
        'b_a_phoneNumber' => 'required|string',
    ];

    
}
