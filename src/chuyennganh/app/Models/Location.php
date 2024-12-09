<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
// use phpseclib3\File\ASN1\Maps\PostalAddress;

class Location extends Model
{
    use HasFactory;
    protected $table = "locations";  

    protected $fillable = ['name', 'address', 'description', 'status', 'id_type', 'id_province'];
    public function utilities(){
        return $this->hasMany(Utility::class,'id_location','id');
    }

    public function photos(){
        return $this->hasMany(Photo::class,'id_location','id');
    }
    
    public function posts(){
        return $this->hasMany(Post::class,'id_location','id');
    }

    public function reviews(){
        return $this->hasMany(Review::class,'id_location','id');
    }

    public function types(){
        return $this->belongsTo(Type::class,'id_type','id');
    }

    public function provinces(){
        return $this->belongsTo(Province::class,'id_province','id');
    }
}
