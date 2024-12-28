<?php

namespace App\Http\Controllers\Page;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Post;
use Illuminate\Support\Facades\Auth;

class UserPostController extends Controller
{
    // Hiển thị danh sách bài viết
    public function index()
    {
        // Lấy các bài viết có status bằng 0
        $posts = Post::with(['user', 'location'])->where('status', 0)->orderBy('created_at', 'desc')->get();
        return view('user.layout.show_post', compact('posts'));
    }

    // Hiển thị form tạo bài viết
    public function create(Request $request)
    {
        $id_location = $request->query('id_location');
        return view('user.layout.post', compact('id_location'));
    }

    // Lưu bài viết vào database
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'title' => 'required|string|max:255',
            'content' => 'required|string',
            'id_location' => 'required|integer',
        ]);

        $post = new Post();
        $post->title = $validatedData['title'];
        $post->content = $validatedData['content'];
        $post->time = now();
        $post->status = 0; // Đặt status mặc định là 0
        $post->id_user = Auth::id();
        $post->id_location = $validatedData['id_location'];
        $post->save();

        return redirect()->route('posts.index')->with('success', 'Bài viết đã được đăng thành công.');
    }

    // Hiển thị form chỉnh sửa bài viết
    public function edit($id)
    {
        $post = Post::findOrFail($id);
        if (Auth::id() != $post->id_user) {
            return redirect()->route('posts.index')->with('error', 'Bạn không có quyền chỉnh sửa bài viết này.');
        }
        return view('user.layout.edit_post', compact('post'));
    }

    // Cập nhật bài viết trong database
    public function update(Request $request, $id)
    {
        $validatedData = $request->validate([
            'title' => 'required|string|max:255',
            'content' => 'required|string',
        ]);

        $post = Post::findOrFail($id);
        if (Auth::id() != $post->id_user) {
            return redirect()->route('posts.index')->with('error', 'Bạn không có quyền chỉnh sửa bài viết này.');
        }

        $post->title = $validatedData['title'];
        $post->content = $validatedData['content'];
        $post->save();

        return redirect()->route('posts.index')->with('success', 'Bài viết đã được cập nhật thành công.');
    }

    // Xóa bài viết khỏi database
    public function destroy($id)
    {
        $post = Post::findOrFail($id);
        if (Auth::id() != $post->id_user) {
            return redirect()->route('posts.index')->with('error', 'Bạn không có quyền xóa bài viết này.');
        }

        $post->delete();
        return redirect()->route('posts.index')->with('success', 'Bài viết đã được xóa thành công.');
    }
}
