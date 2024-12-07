<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Photo;
use App\Models\Location;


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
        return view('admin.photo.add');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
{
    $this->validate($request,
    [
        'photoName' => 'required|max:50|min:3|unique:photos,name',
        'caption' => 'required',
        'url' => 'required|url',
        'images' => 'required|array|max:5',
        'images.*' => 'mimes:jpg,jpeg,png,gif|max:2048'
    ],
    [
        'photoName.required' => 'Bạn chưa nhập tên ảnh',
        'photoName.unique' => 'Tên ảnh đã tồn tại',
        'photoName.max' => 'Tên ảnh nhập tối đa 50 ký tự',
        'photoName.min' => 'Tên ảnh nhập tối thiểu 3 ký tự',
        'caption.required' => 'Bạn chưa nhập chú thích',
        'url.required' => 'Bạn chưa nhập URL',
        'url.url' => 'URL không hợp lệ',
        'images.required' => 'Vui lòng chọn ít nhất 1 ảnh',
        'images.max' => 'Bạn chỉ có thể tải lên tối đa 5 ảnh',
        'images.*.mimes' => 'Chỉ chấp nhận các định dạng ảnh jpg, jpeg, png, gif',
        'images.*.max' => 'Kích thước mỗi ảnh không được vượt quá 2MB'
    ]);

    // Lưu thông tin về ảnh
    $photo = new Photo;
    $photo->name = $request->photoName;
    $photo->caption = $request->caption;
    $photo->url = $request->url;
    $photo->status = 0;  // Gán status là 0
    $photo->save();
    
    $location = Location::find($request->location_id);
    
    // Lưu các ảnh được tải lên
    if ($request->hasFile('images')) {
        $images = $request->file('images'); // Lấy tất cả các file ảnh
        
        // Lấy địa điểm mà bạn đang muốn liên kết ảnh này
        $location = Location::find($request->location_id);

        // Kiểm tra số lượng ảnh đã tải lên
        if ($location->photos()->count() + count($images) > 5) {
            return back()->withErrors(['images' => 'Mỗi địa điểm chỉ được phép có tối đa 5 ảnh.']);
        }

        foreach ($images as $image) {
            $imageName = time() . '-' . $image->getClientOriginalName();
            $image->storeAs('public/images', $imageName); // Lưu ảnh vào thư mục images

            // Lưu thông tin hình ảnh vào bảng ảnh, liên kết với địa điểm
            $location->photos()->create([
                'image' => $imageName // Lưu tên ảnh vào bảng photos
            ]);
        }
    

    return redirect()->route('photos.index');
}
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
        $province = Photo::find($id);
        return view('admin.photo.edit',compact('photo'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $photo = Photo::find($id);
        $photo->name = $request->photoName;
        $photo->status = $request->status;
        $photo->update();
        return redirect()->route('photos.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
       
        $photo = Photo::find($id);
        $photo->delete();
        return redirect()->route('photos.index');
    }
}
