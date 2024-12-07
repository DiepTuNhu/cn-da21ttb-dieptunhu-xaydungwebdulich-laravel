<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class CKEditorController extends Controller
{
    public function upload(Request $request)
    {
        // Kiểm tra file được upload
        if ($request->hasFile('upload')) {
            $file = $request->file('upload');
            $filename = time() . '_' . $file->getClientOriginalName();

            // Lưu file vào thư mục public/ckeditor/uploads
            $file->move(public_path('ckeditor/uploads'), $filename);

            // Trả về đường dẫn file cho CKEditor
            $url = asset('ckeditor/uploads/' . $filename);

            return response()->json([
                'uploaded' => 1,
                'fileName' => $filename,
                'url' => $url
            ]);
        }

        return response()->json(['uploaded' => 0, 'error' => ['message' => 'Upload failed.']], 500);
    }
}
