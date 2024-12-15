<?php

namespace App\Http\Controllers\Page;
use App\Models\Location;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Slide;

class PageController extends Controller
{
    // public function index()
    // {
    //     $location = Location::all();  // Lấy tất cả các bản ghi trong bảng foods
    //     return view('user.index');
    // }
    public function index()
    {
        // Lấy các slides có status = 0
        $slides = Slide::where('status', 0)->get();
        
        // Lấy 5 địa điểm có status = 2
        $locations = Location::where('status', 2)->take(5)->get();
    
        // Lấy 8 địa điểm ngẫu nhiên với status khác 1 (trừ status = 1)
        $randomLocations = Location::where('status', '!=', 1)->inRandomOrder()->take(8)->get();
    
        // Duyệt qua các địa điểm và lấy hình ảnh chính
        foreach ($locations as $location) {
            // Lấy hình ảnh chính với status = 2
            $location->mainImage = $location->photos()->where('status', 2)->first();
        }
    
        // Duyệt qua các địa điểm ngẫu nhiên và lấy hình ảnh chính
        foreach ($randomLocations as $randomLocation) {
            // Lấy hình ảnh chính với status = 2
            $randomLocation->mainImage = $randomLocation->photos()->where('status', 2)->first();
        }
    
        // Truyền dữ liệu sang view
        return view('user.index', compact('slides', 'locations', 'randomLocations'));
    }
}
