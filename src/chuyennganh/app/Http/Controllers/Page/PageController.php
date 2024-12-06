<?php

namespace App\Http\Controllers\Page;
use App\Models\Location;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class PageController extends Controller
{
    // public function index()
    // {
    //     $location = Location::all();  // Lấy tất cả các bản ghi trong bảng foods
    //     return view('user.index');
    // }
    public function index()
    {
        return view('user.index');  // Gọi view index trong thư mục user
    }
}
