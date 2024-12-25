<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Review;

class ReviewController extends Controller
{
    public function index()
    {
        $reviews = Review::with(['user', 'location'])->get();
        return view('admin.review.list', compact('reviews'));
    }

    public function toggleStatus($id)
    {
        $review = Review::findOrFail($id);
        $review->status = $review->status == 0 ? 1 : 0;
        $review->save();

        return redirect()->back()->with('success', 'Trạng thái đã được cập nhật!');
    }

    public function destroy($id)
    {
        $review = Review::findOrFail($id);
        $review->delete();

        return redirect()->back()->with('success', 'Bình luận đã được xóa!');
    }
}
