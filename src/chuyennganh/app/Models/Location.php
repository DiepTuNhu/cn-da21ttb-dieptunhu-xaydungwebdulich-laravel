<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use phpseclib3\File\ASN1\Maps\PostalAddress;

class Location extends Model
{
    use HasFactory;
    protected $table = "locations";  

    public function utilities(){
        return $this->hasMany(Utility::class,'id_location','id');
    }

    public function photos(){
        return $this->hasMany(Photo::class,'id_location','id');
    }
    
    public function posts(){
        return $this->hasMany(PostalAddress::class,'id_location','id');
    }

    public function reviews(){
        return $this->hasMany(Review::class,'id_location','id');
    }

    public function types(){
        return $this->hasMany(Type::class,'id_type','id');
    }

    public function provinces(){
        return $this->hasMany(Province::class,'id_province','id');
    }
}
