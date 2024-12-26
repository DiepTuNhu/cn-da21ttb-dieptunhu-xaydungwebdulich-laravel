<?php

namespace App\Http\Controllers\Page;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Post;
use Illuminate\Support\Facades\Auth;

class UserPostController extends Controller
{
    // Hiển thị form tạo bài viết
    public function create(Request $request)
    {
        // Lấy tham số id_location từ query string
        $id_location = $request->query('id_location');
        return view('user.layout.post', compact('id_location'));
    }

    // Lưu bài viết vào database
    public function store(Request $request)
    {
        // Kiểm tra và validate dữ liệu
        $validatedData = $request->validate([
            'title' => 'required|string|max:255',
            'content' => 'required|string',
            'id_location' => 'required|integer',
        ]);

        // Tạo một bài viết mới
        $post = new Post();
        $post->title = $validatedData['title'];
        $post->content = $validatedData['content'];
        $post->time = now();
        $post->status = 1; // Mặc định trạng thái
        $post->id_user = Auth::id(); // Lấy ID người dùng
        $post->id_location = $validatedData['id_location'];

        // Lưu vào cơ sở dữ liệu
        $post->save();

        // Chuyển hướng về form tạo bài viết với thông báo
        return redirect()->route('post.create')->with('success', 'Bài viết đã được đăng thành công.');
    }
}
