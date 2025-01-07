<?php

namespace App\Http\Controllers\Page;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Storage;
use App\Models\User;
class ProfileController extends Controller
{
    public function edit()
    {
        $user = Auth::user();
        return view('user.layout.edit_profile', compact('user'));
    }

    public function update(Request $request)
    {
        $user = Auth::user();
        if (!$user instanceof User) {
            return redirect()->route('profile.edit')->with('error', 'User not found.');
        }
        $request->validate([
            'password' => 'nullable|string|min:8|confirmed',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ]);

        if ($request->filled('password')) {
            $user->password = Hash::make($request->password);
        }

        if ($request->hasFile('image')) {
            if ($user->image && $user->image !== 'default.jpg') {
                Storage::delete('public/images/' . $user->image);
            }
            $imageName = time() . '.' . $request->image->extension();
            $request->image->storeAs('public/images', $imageName);
            $user->image = $imageName;
        }

        $user->save();

        return redirect()->route('page.index')->with('success', 'Thông tin cá nhân đã được cập nhật.');
    }
}
