<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Location;
use App\Models\Type;
use App\Models\Province;


class LocationController extends Controller
{
    // public function index()
    // {
    //     $locations = Location::all();
    //     return view('admin.location.list',compact('locations'));
    
    // }
    public function index(Request $request)
    {
    // Lấy id từ query string
    $provinceId = $request->input('id');

    // Kiểm tra và lọc dữ liệu
    if ($provinceId) {
        // Lấy hình ảnh liên kết với địa điểm
        $locations = Location::where('id_province', $provinceId)->get();
    } else {
        // Nếu không có id, lấy tất cả hình ảnh
        $locations = Location::all();
    }

    // Trả dữ liệu ra view
    return view('admin.location.list',compact('locations'));
}
    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $types = Type::all(); // Lấy danh sách các loại hình
        $provinces = Province::all(); // Lấy danh sách các tỉnh

        return view('admin.location.add', compact('types', 'provinces'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|string|max:255|unique:locations,name',
            'address' => 'nullable|string|max:255',
            'description' => 'nullable|string',
            'id_type' => 'required|exists:types,id', // Kiểm tra id có tồn tại trong bảng types
            'id_province' => 'required|exists:provinces,id', // Kiểm tra id có tồn tại trong bảng cities
        ], [
            'name.required' => 'Bạn chưa nhập tên.',
            'name.unique' => 'Bạn chưa nhập tên.',
            'id_type.required' => 'Bạn chưa chọn loại hình.',
            'id_province.required' => 'Bạn chưa chọn tỉnh/thành phố.',

        ]);

        $location = new Location();
        $location->name = $request->name;
        $location->address = $request->address;
        $location->description = $request->description;
        $location->id_type = $request->id_type; // Lưu ID của loại hình
        $location->id_province = $request->id_province; // Lưu ID của thành phố
        $location->status = 0; 

        $location->save();

        return redirect()->route('locations.index')->with('success', 'Địa điểm đã được thêm thành công.');
        // dd($request->all());
    }
    
    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $location = Location::find($id);
        $types = Type::all(); 
        $provinces = Province::all(); 

    return view('admin.location.edit', compact('location', 'types', 'provinces'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
{
    // Tìm location theo ID
    $location = Location::find($id);

    // Nếu không tìm thấy location, trả về lỗi hoặc thông báo
    if (!$location) {
        return redirect()->route('locations.index')->with('error', 'Location not found!');
    }

    // Cập nhật các trường thông tin từ request
    $location->name = $request->name;
    $location->address = $request->address;
    $location->description = $request->description;
    $location->id_type = $request->id_type; // Lưu ID của loại hình
    $location->id_province = $request->id_province; // Lưu ID của tỉnh/thành phố
    $location->status = $request->status; // Cập nhật trạng thái


    // Lưu lại các thay đổi
    $location->save();

    // Chuyển hướng về trang danh sách locations với thông báo thành công
    return redirect()->route('locations.index')->with('success', 'Location updated successfully!');
}

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        // Tìm người dùng theo ID
        $location = Location::find($id);


        // Xóa người dùng
        $location->delete();

        // Chuyển hướng về trang danh sách người dùng
        return redirect()->route('locations.index');
    }
}
