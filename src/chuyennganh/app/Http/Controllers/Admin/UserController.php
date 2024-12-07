<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class UserController extends Controller
{
    public function index()
    {
        $users = User::all();
        return view('admin.user.list',compact('users'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.user.add');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        // Kiểm tra dữ liệu đầu vào
        $this->validate($request,[
            'username' => 'required|string|max:255',
            'email' => 'required|email|unique:users,email|max:255',
            'address' => 'nullable',
            'password' => 'required',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
        ],
        [
            'username.required' => 'Bạn chưa nhập tên.',
            'email.required' => 'Bạn chưa nhập email.',
            'email.unique' => 'Email đã tồn tại.',
            'password.required' => 'Bạn chưa nhập mật khẩu.',
            'password.min' => 'Mật khẩu phải chứa ít nhất 6 ký tự.',
            'image.required' => 'Bạn chưa tải lên hình ảnh.',
            'image.image' => 'Tệp tải lên phải là hình ảnh.',
            'image.mimes' => 'Hình ảnh phải có định dạng: jpeg, png, jpg, gif.',
            'image.max' => 'Hình ảnh phải nhỏ hơn 2MB.',
        ]);

        

        // Tạo một người dùng mới
        $user = new User();
        $user->username = $request->username;
        $user->email = $request->email;
        $user->password = bcrypt($request->password);
        $user->address = $request->address;
        $user->id_role = 2;
        $user->status = 0;

        // Xử lý ảnh người dùng (nếu có)
        if ($request->hasFile('image')) {
            // Tạo tên ảnh duy nhất dựa trên thời gian
            $imageName = time() . '.' . $request->image->extension();  
            
            // Lưu ảnh vào thư mục public/images/users
            $request->image->storeAs('public/images', $imageName);
        
            // Cập nhật đường dẫn ảnh vào cơ sở dữ liệu (lưu tên ảnh)
            $user->image = $imageName;  
        }
        // Lưu vào cơ sở dữ liệu
        $user->save();

        // Chuyển hướng với thông báo thành công
        return redirect()->route('users.index')->with('success', 'Người dùng đã được thêm thành công.');
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
        $user = User::find($id);
        return view('admin.user.edit',compact('user'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        // Tìm người dùng theo ID
        $user = User::find($id);

        // Kiểm tra nếu người dùng tồn tại
        if (!$user) {
            return redirect()->route('users.index')->with('error', 'User not found');
        }

        // Kiểm tra và xóa ảnh cũ nếu có
        if ($user->image && $request->hasFile('image')) {
            // Xóa ảnh cũ nếu có và có ảnh mới được tải lên
            Storage::delete('public/images/' . $user->image);
        }

        // Cập nhật thông tin người dùng
        $user->username = $request->userName;
        $user->email = $request->email;
        $user->address = $request->address;
        $user->status = $request->status;


        // Xử lý tải lên hình ảnh mới
        if ($request->hasFile('image')) {
            $imageName = time() . '.' . $request->image->extension();  
            $request->image->storeAs('public/images', $imageName);
            $user->image = $imageName;
        }

        // Lưu thông tin người dùng
        $user->save(); 

        // Quay lại trang danh sách người dùng
        return redirect()->route('users.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        // Tìm người dùng theo ID
        $user = User::find($id);

        // Kiểm tra nếu người dùng có ảnh
        if ($user->image) {
            // Xóa ảnh khỏi thư mục lưu trữ
            Storage::delete('public/images/' . $user->image);
        }

        // Xóa người dùng
        $user->delete();

        // Chuyển hướng về trang danh sách người dùng
        return redirect()->route('users.index');
    }
}
