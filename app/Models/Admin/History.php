<?php

namespace App\Models\Admin;

use App\User;
use Eloquent as Model;
use Illuminate\Database\Eloquent\SoftDeletes;

/**
 * Class History
 * @package App\Models\Admin
 * @version February 15, 2020, 5:24 pm UTC
 *
 * @property integer loan_amount
 * @property integer user_id
 * @property integer file_size
 */
class History extends Model
{
    use SoftDeletes;

    public $table = 'histories';
    

    protected $dates = ['deleted_at'];



    public $fillable = [
        'loan_amount',
        'user_id',
        'file_size'
    ];

    /**
     * The attributes that should be casted to native types.
     *
     * @var array
     */
    protected $casts = [
        'id' => 'integer',
        'loan_amount' => 'integer',
        'user_id' => 'integer',
        'file_size' => 'integer'
    ];

    /**
     * Validation rules
     *
     * @var array
     */
    public static $rules = [
        'loan_amount' => 'required|numeric',
        'user_id' => 'required|numeric',
        'file_size' => 'required|numeric'
    ];

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    
}
