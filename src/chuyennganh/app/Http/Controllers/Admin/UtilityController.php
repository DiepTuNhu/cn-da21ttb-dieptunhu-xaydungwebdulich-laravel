<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Utility;
use App\Models\Typeofutility;
use App\Models\Location;
use Illuminate\Support\Facades\Storage;


class UtilityController extends Controller
{
    public function index()
    {
        
        $utilities = Utility::all();
        return view('admin.utility.list',compact('utilities'));
    }

    public function create()
    {
        $typeofutilities = Typeofutility::all(); // Lấy danh sách các loại hình
        $locations = Location::all(); // Lấy danh sách các tỉnh

        return view('admin.utility.add', compact('typeofutilities', 'locations'));
    }

    public function store(Request $request)
{
    // Validate dữ liệu từ form
    $this->validate($request, [
        'name' => 'string|max:255', // Kiểm tra tên địa điểm
        'price' => 'nullable', // Kiểm tra giá phải là số
        'address' => 'nullable|string|max:255', // Địa chỉ
        'phone' => 'nullable|string|phone_vn', // Sử dụng custom validation rule 'phone_vn'
        // 'openingtime' => 'nullable|string|max:255', // Giờ mở cửa
        // 'closingtime' => 'nullable|string|max:255', // Giờ đóng cửa
        'time' => 'nullable|string|max:255', // Giờ đóng cửa
        'rating' => 'nullable|numeric|min:0|max:5', // Xếp hạng
        'distance' => 'nullable|numeric', // Khoảng cách
        'description' => 'nullable|string', // Mô tả
        'image' => 'nullable|image|mimes:webp,jpeg,png,jpg,gif|max:2048', // Kiểm tra ảnh hợp lệ
        'id_typeofutility' => 'required|exists:typeofutilities,id', // Kiểm tra loại tiện ích có tồn tại
        'id_location' => 'required|exists:locations,id', // Kiểm tra tỉnh có tồn tại
    ], [
        // 'name.required' => 'Bạn chưa nhập tên tiện ích.',
        // 'name.unique' => 'Tên tiện ích đã tồn tại.',
        'phone.regex' => 'Số điện thoại không hợp lệ.',
        'rank.numeric' => 'Xếp hạng phải là một số từ 0 đến 5.',
        'image.image' => 'Hình ảnh không hợp lệ.',
        'id_typeofutility.required' => 'Bạn chưa chọn loại tiện ích.',
        'id_location.required' => 'Bạn chưa chọn tỉnh/thành phố.',
    ]);

    // Khởi tạo đối tượng Location mới
    $utility = new Utility();
    $utility->name = $request->name;
    $utility->price = $request->price;
    $utility->address = $request->address;
    $utility->phonenumber = $request->phone;
    // $utility->openingtime = $request->openingtime;
    // $utility->closingtime = $request->closingtime;
    $utility->time = $request->time;
    $utility->rank = $request->rank;
    $utility->distance = $request->distance;
    $utility->description = $request->description;
    $utility->id_typeofutility = $request->id_typeofutility;
    $utility->id_location = $request->id_location;
    $utility->status = 0; // Trạng thái mặc định là chưa duyệt

    // Xử lý hình ảnh (nếu có)
    if ($request->hasFile('image')) {
        $imageName = time() . '.' . $request->image->extension();  
        // Lưu ảnh vào thư mục public/images
        $request->image->storeAs('public/utility_image', $imageName);
        $utility->image = $imageName;
    }

    // Lưu địa điểm vào cơ sở dữ liệu
    $utility->save();

    // Quay lại trang danh sách với thông báo thành công
    return redirect()->route('utilities.index')->with('success', 'Tiện ích đã được thêm thành công.');
}
public function edit(string $id)
    {       
        $utility = Utility::find($id);
        $typeofutilities = Typeofutility::all(); // Lấy danh sách các loại hình
        $locations = Location::all(); // Lấy danh sách các tỉnh

    return view('admin.utility.edit', compact('utility','typeofutilities', 'locations'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
{
    // Tìm location theo ID
    $utility = Utility::find($id);

    // Nếu không tìm thấy utility, trả về lỗi hoặc thông báo
    if (!$utility) {
        return redirect()->route('utilities.index')->with('error', 'Location not found!');
    }

        // Kiểm tra và xóa ảnh cũ nếu có
    if ($utility->image && $request->hasFile('image1') && $utility->image !== 'default.jpg') {
        // Xóa ảnh cũ nếu có và có ảnh mới được tải lên
        Storage::delete('public/utility_image/' . $utility->image);
    }

    // Cập nhật các trường thông tin từ request
    $utility->name = $request->name;
    $utility->price = $request->price;
    $utility->address = $request->address;
    $utility->phonenumber = $request->phone;
    // $utility->openingtime = $request->openingtime;
    // $utility->closingtime = $request->closingtime;
    $utility->time = $request->time;
    $utility->rank = $request->rank;
    $utility->distance = $request->distance;
    $utility->description = $request->description;
    $utility->id_typeofutility = $request->id_typeofutility;
    $utility->id_location = $request->id_location;
    $utility->status = $request->status; // Cập nhật trạng thái

    // Xử lý tải lên hình ảnh mới nếu có
    if ($request->hasFile('image1')) {
        $imageName = time() . '.' . $request->file('image1')->extension();  
        // Lưu ảnh vào thư mục public/images
        $request->file('image1')->storeAs('public/utility_image', $imageName);
        // Cập nhật tên ảnh trong cơ sở dữ liệu
        $utility->image = $imageName;
    }
    // Lưu lại các thay đổi
    $utility->save();

    // Chuyển hướng về trang danh sách locations với thông báo thành công
    return redirect()->route('utilities.index')->with('success', 'Location updated successfully!');
}

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        // Tìm người dùng theo ID
        $utility = Utility::find($id);

        // Kiểm tra nếu người dùng có ảnh
        if ($utility->image) {
            // Xóa ảnh khỏi thư mục lưu trữ
            Storage::delete('public/utility_image/' . $utility->image);
        }

        // Xóa người dùng
        $utility->delete();

        // Chuyển hướng về trang danh sách người dùng
        return redirect()->route('utilities.index');
    }

}
