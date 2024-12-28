<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Post; // Import the Post model

class PostController extends Controller
{
    public function index()
    {
        $posts = Post::all(); // Fetch all posts from the database
        return view('admin.post.list', compact('posts')); // Pass the posts to the view
    }

    public function toggleStatus($id)
    {
        $post = Post::findOrFail($id);
        $post->status = !$post->status;
        $post->save();

        return redirect()->route('admin.posts.index')->with('success', 'Trạng thái bài viết đã được cập nhật.');
    }

    public function destroy($id)
    {
        $post = Post::findOrFail($id);
        $post->delete();

        return redirect()->route('admin.posts.index')->with('success', 'Bài viết đã được xóa.');
    }
}
