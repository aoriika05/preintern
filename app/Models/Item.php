<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Item extends Model
{
    //

    protected $fillable = [
        'budgetrequest_id',
        'name',
        'unit',
        'quantity',
    ];

    public function budgetRequest()
    {
        return $this->belongsTo(BudgetRequest::class);
    }
}
