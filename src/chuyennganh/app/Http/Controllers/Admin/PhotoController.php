<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Photo;
use App\Models\Location;
use Illuminate\Support\Facades\Storage;
use App\Models\Province;

class PhotoController extends Controller
{
    public function index()
    {
        $photos = Photo::all();
       
        return view('admin.photo.list',compact('photos'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $locations = Location::all(); 
        $provinces = Province::all();

        return view('admin.photo.add', compact('provinces','locations'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
{
    // Validate dữ liệu
    $this->validate($request, [
        'caption' => 'required|max:255',
        'url' => 'required|url',
        'images2' => 'nullable|array|max:5',
        'images2.*' => 'mimes:jpg,jpeg,png,gif|max:2048',
        'image1' => 'required|mimes:jpg,jpeg,png,gif|max:2048'
    ], [
        'caption.required' => 'Bạn chưa nhập chú thích',
        'url.required' => 'Bạn chưa nhập URL',
        'url.url' => 'URL không hợp lệ',
        'images2.max' => 'Bạn chỉ có thể tải lên tối đa 5 ảnh phụ',
        'images2.*.mimes' => 'Chỉ chấp nhận định dạng jpg, jpeg, png, gif',
        'image1.required' => 'Bạn chưa chọn ảnh chính',
        'image1.mimes' => 'Ảnh chính phải có định dạng jpg, jpeg, png, gif',
        'image1.max' => 'Ảnh chính không được vượt quá 2MB'
    ]);

    // Lưu ảnh chính (image1)
    if ($request->hasFile('image1')) {
        $image1 = $request->file('image1');
        $image1Name = time() . '-' . $image1->getClientOriginalName();
        $image1->storeAs('public/location_image', $image1Name);

        // Lưu thông tin ảnh chính vào bảng photos
        $photo = new Photo();
        $photo->name = $image1Name;
        $photo->caption = $request->input('caption');
        $photo->url = $request->input('url');
        $photo->status = 2; // Trạng thái ảnh chính là 2
        $photo->id_location = $request->input('id_location');
        $photo->save();
    }

    // Lưu các ảnh phụ (images)
    if ($request->hasFile('images')) {
        $images = $request->file('images');
        foreach ($images as $image) {
            $imageName = time() . '-' . $image->getClientOriginalName();
            $image->storeAs('public/location_image', $imageName);

            // Lưu ảnh phụ vào bảng photos với status = 0
            Photo::create([
                'name' => $imageName,
                'caption' => $request->input('caption'),
                'url' => $request->input('url'),
                'status' => 0,
                'id_location' => $request->input('id_location'),
            ]);
        }
    }

    return redirect()->route('photos.index')->with('success', 'Ảnh đã được lưu thành công');
}



    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
       
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {


    $photo = Photo::findOrFail($id); // Lấy ảnh theo ID
    $locations = Location::all(); // Lấy danh sách địa điểm

    return view('admin.photo.edit', compact('photo', 'locations'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
{
    $photo = Photo::find($id);  // Lấy thông tin ảnh cần chỉnh sửa


    // Cập nhật thông tin ảnh chính nếu người dùng chọn ảnh mới
    if ($request->hasFile('image1')) {
        // Xóa ảnh cũ trước khi lưu ảnh mới
        Storage::delete('public/location_image/' . $photo->name);

        // Lưu ảnh mới
        $image1 = $request->file('image1');
        $image1Name = time() . '-' . $image1->getClientOriginalName();
        $image1->storeAs('public/location_image', $image1Name);

        // Cập nhật thông tin ảnh chính
        $photo->name = $image1Name;
    }

    // Cập nhật các trường khác
    $photo->caption = $request->input('caption');
    $photo->url = $request->input('url');
    $photo->status = $request->input('status');
    $photo->id_location = $request->input('id_location');
    $photo->save();

    // Cập nhật các ảnh phụ (nếu có)
    if ($request->hasFile('images2')) {
        // Xóa các ảnh phụ cũ (nếu có) và thêm ảnh mới
        foreach ($photo->images as $image) {
            Storage::delete('public/location_image/' . $image->name);
            $image->delete();
        }

        // Lưu các ảnh phụ mới
        $images2 = $request->file('images2');
        foreach ($images2 as $image) {
            $imageName = time() . '-' . $image->getClientOriginalName();
            $image->storeAs('public/location_image', $imageName);

            // Lưu ảnh phụ vào bảng photos với status = 0
            Photo::create([
                'name' => $imageName,
                'caption' => $request->input('caption'),
                'url' => $request->input('url'),
                'status' => 0,  // Trạng thái ảnh phụ là 0
                'id_location' => $request->input('id_location'),
            ]);
        }
    }

    return redirect()->route('photos.index')->with('success', 'Ảnh đã được cập nhật thành công');
}


    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        $photo = Photo::find($id);
        // Kiểm tra nếu người dùng có ảnh
        if ($photo->name) {
            // Xóa ảnh khỏi thư mục lưu trữ
            Storage::delete('public/location_image/' . $photo->name);
        }
        $photo->delete();
        return redirect()->route('photos.index');
    }
}
