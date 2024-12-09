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
    
    // Liên kết gián tiếp tới tỉnh thông qua bảng locations
    public function province()
    {
        return $this->hasOneThrough(Province::class, Location::class, 'id', 'id', 'id_location', 'id_province');
    }
}
