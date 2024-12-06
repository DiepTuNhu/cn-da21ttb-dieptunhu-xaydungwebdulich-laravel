<?php

namespace App\Http\Controllers\User;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Laravel\Socialite\Facades\Socialite;
use App\Models\User;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Exception;


class AuthController extends Controller
{
    // Chuyển hướng người dùng đến Google
    public function redirectToGoogle()
    {
        return Socialite::driver('google')->redirect();
    }
  
      // Xử lý callback từ Google
    public function handleGoogleCallback()
    { 
        try {
            $googleUser = Socialite::driver('google')->user();
            
            // Kiểm tra xem người dùng đã tồn tại chưa
            $user = User::firstOrCreate(
                ['email' => $googleUser->getEmail()],
                [
                    'username' => $googleUser->getName(),
                    'password' => bcrypt(Str::random(16)), // Mật khẩu ngẫu nhiên
                    'google_id' => $googleUser->getId()
                ]
            );
    
            // Đăng nhập người dùng
            Auth::login($user, true);
    
            Session::put('userID', $user->id);
            // dd(session()->all());
            // Kiểm tra vai trò của người dùng và chuyển hướng tương ứng
            if ($user->id_role == 2) {
                return redirect()->route('types.index');
            } else {
                return redirect()->route('page.index');
            }
        } catch (Exception $e) {
            return redirect('login')->with('error', 'Đăng nhập Google thất bại, vui lòng thử lại.');
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
 
     return redirect()->route('page.index'); // Chuyển hướng đến trang chủ
 }
}
