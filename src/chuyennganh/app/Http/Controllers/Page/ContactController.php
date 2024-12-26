<?php

namespace App\Http\Controllers\Page;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Contact;
use Illuminate\Support\Facades\Auth;

class ContactController extends Controller
{
    public function index()
    {
        return view('user.layout.contact');
    }

    public function store(Request $request)
    {
        if (!Auth::check()) {
            return redirect()->route('contact.index')->with('error', 'Vui lòng đăng nhập để gửi phản hồi.');
        }

        $request->validate([
            'sender' => 'required|string|max:50',
            'email' => 'required|email',
            'content' => 'required|string',
        ]);

        Contact::create([
            'sender' => $request->sender,
            'email' => $request->email,
            'content' => $request->content,
            'time' => now(),
            'status' => 0, // Assuming 0 means pending
            'id_user' => Auth::id(),
        ]);

        return redirect()->route('contact.index')->with('success', 'Phản hồi của bạn đã được gửi!');
    }
}
