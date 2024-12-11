<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Utility extends Model
{
    use HasFactory;
    protected $table = 'utilities';  // Tên bảng trong cơ sở dữ liệu
    protected $fillable = [
        'name', 
        'price', 
        'address', 
        'phonenumber', 
        'openingtime', 
        'closingtime', 
        'rank', 
        'distance', 
        'description', 
        'image', 
        'status', 
        'id_typeofutility', 
        'id_location'
    ];  // Các cột cho phép điền vào khi tạo hoặc cập nhật
    public function typeOfUtility()
    {
        return $this->belongsTo(TypeOfUtility::class, 'id_typeofutility','id');
    }

    public function location()
    {
        return $this->belongsTo(Location::class, 'id_location','id');
    }
}
