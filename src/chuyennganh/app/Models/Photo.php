<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Photo extends Model
{
    use HasFactory;

    protected $fillable = [
        'name',
        'caption',
        'url',
        'status',
        'id_location',
    ];
    public function location()
    {
        return $this->belongsTo(Location::class,'id_location','id'); 
    }
}
