<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Auth;

class SignupController extends Controller
{
    public function index(){
        return view('user.layout.signup');
    }

    public function postSignup(Request $request){
        $request->validate([
            'username' => 'required',
            'email' => 'required|email|unique:users,email',
            'password' => [
                'required',
                'string',
                'min:8', // ít nhất 8 ký tự
                'regex:/[a-z]/', // ít nhất một chữ cái viết thường
                'regex:/[A-Z]/', // ít nhất một chữ cái viết hoa
                'regex:/[0-9]/', // ít nhất một chữ số
                'regex:/[@$!%*?&#]/' // ít nhất một ký tự đặc biệt
            ],
            // 'address' => 'required',  // Thêm trường address
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048', // Validate ảnh (nếu có)
        ],[
            'username.required' => 'Vui lòng nhập tên đăng nhập. ',
            'email.required' => 'Vui lòng nhập email. ',
            'email.email' => 'Email không đúng định dạng. ',
            'email.unique' => 'Email đã tồn tại. ',
            'password.required' => 'Vui lòng nhập mật khẩu. ',
            'password.min' => 'Mật khẩu phải chứa ít nhất 8 ký tự.',
            'password.regex' => 'Mật khẩu phải chứa ít nhất một chữ cái viết thường, một chữ cái viết hoa, một chữ số và một ký tự đặc biệt.',
            // 'address.required' => 'Vui lòng nhập địa chỉ. ',
            'image.image' => 'Vui lòng chọn tệp hình ảnh hợp lệ.',
            'image.mimes' => 'Hình ảnh phải có định dạng jpeg, png, jpg, gif, svg.',
            'image.max' => 'Hình ảnh không được vượt quá 2MB.',
        ]);
        // Tạo người dùng mới
        $user = new User();
        $user->username = $request->username;
        $user->email = $request->email;
        $user->password = bcrypt($request->password);
        $user->address = $request->address;
        $user->id_role = 2;
        $user->status = 0; 

        // Xử lý ảnh người dùng (nếu có)
        if ($request->hasFile('image')) {
            // Lưu ảnh và lấy tên ảnh
            $imageName = time() . '.' . $request->image->extension();  
            $request->image->storeAs('public/images', $imageName);  // Lưu vào thư mục public/images
            $user->image = $imageName;  // Lưu tên ảnh vào cơ sở dữ liệu
        } else {
            // Nếu không có ảnh, sử dụng ảnh mặc định
            $user->image = 'default.jpg';
        }

        // Lưu người dùng vào cơ sở dữ liệu
        $user->save();
        // Đăng nhập người dùng ngay sau khi tạo
        Auth::login($user);
   
        // Lưu thông tin người dùng vào session
        Session::put('userEmail', $user->email);
        $userId = $user->id;
        Session::put('userID', $userId);
        Session::put('userName', $user->username);

        // Chuyển hướng tới trang index
        return redirect()->route('page.index');
    }
}
