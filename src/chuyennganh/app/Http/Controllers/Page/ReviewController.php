<?php

namespace App\Http\Controllers\Page;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Review;
use Illuminate\Support\Facades\Auth;

class ReviewController extends Controller
{
    public function store(Request $request)
    {
        $request->validate([
            'rating' => 'required|integer|min:1|max:5',
            'comment' => 'required|string|max:255',
        ]);

        Review::create([
            'point' => $request->rating,
            'comment' => $request->comment,
            'time' => now(),
            'status' => 0, // Assuming 0 means pending approval
            'id_user' => Auth::id(),
            'id_location' => $request->id_location,
        ]);

        return redirect()->back()->with('success', 'Đánh giá của bạn đã được gửi!');
    }

    public function edit($id)
    {
        $review = Review::findOrFail($id);
        if (Auth::id() != $review->id_user) {
            return redirect()->back()->with('error', 'Bạn không có quyền chỉnh sửa đánh giá này.');
        }
        return view('reviews.edit', compact('review'));
    }

    public function update(Request $request, $id)
    {
        $review = Review::findOrFail($id);
        if (Auth::id() != $review->id_user) {
            return redirect()->back()->with('error', 'Bạn không có quyền chỉnh sửa đánh giá này.');
        }

        $request->validate([
            'rating' => 'required|integer|min:1|max:5',
            'comment' => 'required|string|max:255',
        ]);

        $review->update([
            'point' => $request->rating,
            'comment' => $request->comment,
        ]);

        return redirect()->route('page.detail_location', $review->id_location)->with('success', 'Đánh giá của bạn đã được cập nhật!');
    }

    public function destroy($id)
    {
        $review = Review::findOrFail($id);
        if (Auth::id() != $review->id_user) {
            return redirect()->back()->with('error', 'Bạn không có quyền xóa đánh giá này.');
        }

        $review->delete();
        return redirect()->back()->with('success', 'Đánh giá của bạn đã được xóa!');
    }
}