<?php

namespace App\Repositories\Admin;

use App\Models\Admin\UserDetail;
use App\Repositories\BaseRepository;

/**
 * Class UserDetailRepository
 * @package App\Repositories\Admin
 * @version February 11, 2020, 11:27 am UTC
*/

class UserDetailRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'loan_amount',
        'loan_duration',
        'monthly_replayment',
        'total_replayment',
        'total_interest',
        'p_d_title',
        'p_d_fName',
        'p_d_lName',
        'p_d_mName',
        'p_d_dateOfBirth',
        'p_d_noOfDependents',
        'c_d_email',
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
        'b_a_phoneNumber'
    ];

    /**
     * Return searchable fields
     *
     * @return array
     */
    public function getFieldsSearchable()
    {
        return $this->fieldSearchable;
    }

    /**
     * Configure the Model
     **/
    public function model()
    {
        return UserDetail::class;
    }
}
