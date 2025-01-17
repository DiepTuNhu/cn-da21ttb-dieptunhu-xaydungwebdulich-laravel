<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;


class LoginController extends Controller
{
    public function index()
    {
        return view('admin.login.login');
    }

    public function store(Request $req)
    {
        // Xác thực dữ liệu đầu vào
        $this->validate($req,
        [
             'email'=>'required|email',
             'password'=>'required|min:3|max:20'
        ],
        [
             'email.required'=>'Vui lòng nhập email',
             'email.email'=>'Không đúng định dạng email',
             'password.required'=>'Vui lòng nhập mật khẩu',
        ]);

        // Kiểm tra thông tin người dùng với email và mật khẩu
        $credentials = ['email' => $req->email, 'password' => $req->password];
        // Thực hiện xác thực người dùng
        if (Auth::attempt($credentials)) {
            // Kiểm tra vai trò của người dùng sau khi xác thực
            $user = Auth::user();
            Session::put('userEmail', $user->email);
            Session::put('userID', $user->id);
            
            // dd(session()->all());

            // Điều hướng tùy theo vai trò
            if ($user->id_role == 1) {
                // Nếu là admin, chuyển đến trang quản trị
                return redirect()->route('types.index')->with(['flag' => 'success', 'message' => 'Đăng nhập thành công']);
            } elseif ($user->id_role == 2) {
                // Nếu là người dùng thường, chuyển đến trang người dùng
                return redirect()->route('page.index')->with(['flag' => 'success', 'message' => 'Đăng nhập thành công']);
            } else {
                // Nếu không có vai trò hợp lệ
                return redirect()->route('login')->with(['flag' => 'danger', 'message' => 'Vai trò không hợp lệ']);
            }
        } else {
            // Nếu đăng nhập thất bại
            return redirect()->back()->with(['flag' => 'danger', 'message' => 'Đăng nhập thất bại']);
        }
    }

    public function logout(Request $request)
    {
        // Đăng xuất khỏi ứng dụng
        Auth::logout();
    
        // Làm mất hiệu lực phiên hiện tại
        $request->session()->invalidate();
    
        // Tạo lại token CSRF cho phiên mới
        $request->session()->regenerateToken();
    
        // Xóa thông tin email người dùng khỏi session
        Session::forget('userEmail');
        Session::forget('userID');
        
        // Chuyển hướng đến trang chủ sau khi đăng xuất
        return redirect()->route('page.index');
    }
}

