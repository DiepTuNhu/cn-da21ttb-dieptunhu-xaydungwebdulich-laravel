<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Post extends Model
{
    use HasFactory;

    protected $fillable = [
        'title',
        'content',
        'time',
        'status',
        'id_user',
        'id_location',
    ];

    // Define the relationship with the User model
    public function user()
    {
        return $this->belongsTo(User::class, 'id_user');
    }

    // Define the relationship with the Location model
    public function location()
    {
        return $this->belongsTo(Location::class, 'id_location');
    }
}
