<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Item extends Model
{
    //
    public function budgetRequest()
    {
        return $this->belongsTo(BudgetRequest::class);
    }
}
