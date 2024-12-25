<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Review extends Model
{
    use HasFactory;

    protected $fillable = ['point', 'comment', 'time', 'status', 'id_user', 'id_location'];

    public function user()
    {
        return $this->belongsTo(User::class, 'id_user', 'id');
    }

    public function location()
    {
        return $this->belongsTo(Location::class, 'id_location', 'id');
    }
}
