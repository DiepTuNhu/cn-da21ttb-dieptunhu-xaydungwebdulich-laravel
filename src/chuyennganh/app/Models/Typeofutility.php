<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Typeofutility extends Model
{
    use HasFactory;
    protected $table = 'typeofutilities';  // Tên bảng trong cơ sở dữ liệu
    protected $fillable = [
        'name', 
        'status'
    ];  // Các cột cho phép điền vào khi tạo hoặc cập nhật

    public function utilities()
    {
        return $this->hasMany(Utility::class, 'id_typeofutility','id');
    }
}
