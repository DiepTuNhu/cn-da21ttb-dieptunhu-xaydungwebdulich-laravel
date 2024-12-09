<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Province extends Model
{
    use HasFactory;

    protected $fillable = ['name', 'status'];

    // Một tỉnh có nhiều địa điểm
    public function locations()
    {
        return $this->hasMany(Location::class, 'id_province');
    }
}
