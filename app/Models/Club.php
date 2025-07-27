<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Club extends Model
{
    //
    public function users(){
        return $this->belongsToMany(User::class);
    }

    public function budgetRequests()
    {
        return $this->hasMany(BudgetRequest::class);
    }
}
