<?php

namespace App\Repositories\Admin;

use App\Models\Admin\History;
use App\Repositories\BaseRepository;

/**
 * Class HistoryRepository
 * @package App\Repositories\Admin
 * @version February 15, 2020, 5:24 pm UTC
*/

class HistoryRepository extends BaseRepository
{
    /**
     * @var array
     */
    protected $fieldSearchable = [
        'loan_amount'
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
        return History::class;
    }
}
