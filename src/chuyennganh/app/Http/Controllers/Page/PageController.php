<?php

namespace App\Http\Controllers\Page;
use App\Models\Location;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Slide;
use App\Models\Type;
use App\Models\Province;

class PageController extends Controller
{
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

    public function getSearch(Request $req)
{
    // Lấy từ khóa tìm kiếm từ form
    $key = $req->input('key'); 

    // Tìm kiếm địa điểm trong cơ sở dữ liệu
    $locations = Location::where('name', 'like', '%' . $key . '%')->get();
    
    foreach ($locations as $location) {
        // Lấy hình ảnh chính với status = 2
        $location->mainImage = $location->photos()->where('status', 2)->first();
    }
    // Lấy dữ liệu slideshow hoặc các dữ liệu khác nếu cần
    $slides = Slide::where('status', 0)->get();

    // Trả về view với kết quả tìm kiếm
    return view('user.layout.page_search', compact('locations', 'slides', 'key'));
}

public function getLocation(Request $request)
{
    // Lấy các slides có status = 0
    $slides = Slide::where('status', 0)->get();

    // Lấy tất cả các tỉnh có status = 0
    $provinces = Province::where('status', 0)->get();
    // Tìm tỉnh Trà Vinh
    $travinh = $provinces->where('name', 'Tỉnh Trà Vinh')->first();

    if ($travinh) {
        $provinces = $provinces->reject(function($province) use ($travinh) {
            return $province->id == $travinh->id;
        });
        // Đưa tỉnh Trà Vinh lên đầu
        $provinces->prepend($travinh);
    }

    // Lấy province_id từ yêu cầu nếu có
    $provinceId = $request->get('province_id');
    if ($provinceId) {
        // Lọc địa điểm theo province_id được chọn
        $locations = Location::where('status', '!=', 1)
                              ->where('id_province', $provinceId)
                              ->get();
    } else {
        // Lấy địa điểm mặc định (ví dụ: theo tỉnh Trà Vinh)
        $locations = Location::where('status', '!=', 1)
                              ->where('id_province', $travinh->id)
                              ->get();
        $provinceId = $travinh->id;  // Sử dụng tỉnh Trà Vinh làm mặc định nếu không có province_id
    }

    // Gắn hình ảnh chính cho các địa điểm
    foreach ($locations as $location) {
        $location->mainImage = $location->photos()->where('status', 2)->first();
    }

    // Kiểm tra nếu yêu cầu là JSON từ AJAX
    if ($request->wantsJson()) {
        return response()->json([
            'provinces' => $provinces,
            'locations' => $locations,
            'activeProvince' => $provinceId  // Trả về tỉnh đang active
        ]);
    }

    // Trả về dữ liệu cho view nếu không phải là AJAX
    return view('user.layout.location', compact('provinces', 'locations', 'slides', 'travinh'));
}

public function getDetailLocation($id) {
    $detail_location = Location::with('photos', 'types')->find($id);

    if (!$detail_location) {
        return redirect()->back()->with('error', 'Địa điểm không tồn tại!');
    }

    // Lọc hình lớn và hình nhỏ
    $main_photo = $detail_location->photos->firstWhere('status', 2); // Hình lớn có status = 2
    $small_photos = $detail_location->photos->where('status', 0); // Hình nhỏ có status = 0

    return view('user.layout.detail_location', compact('detail_location', 'main_photo', 'small_photos'));
}


}
