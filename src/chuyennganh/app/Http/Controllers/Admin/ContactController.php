<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Contact;
use App\Models\User;

class ContactController extends Controller
{
    public function index()
    {
        // Lấy tất cả dữ liệu từ bảng contacts và users
        $contacts = Contact::with('user')->get();

        // Truyền dữ liệu tới view
        return view('admin.contact.list', compact('contacts'));
    }

    public function toggleStatus($id)
    {
        $contact = Contact::findOrFail($id);
        $contact->status = !$contact->status;
        $contact->save();

        return redirect()->route('admin.contacts.index')->with('success', 'Trạng thái đã được cập nhật.');
    }

    public function destroy($id)
    {
        $contact = Contact::findOrFail($id);
        $contact->delete();

        return redirect()->route('admin.contacts.index')->with('success', 'Liên hệ đã được xóa.');
    }
}
