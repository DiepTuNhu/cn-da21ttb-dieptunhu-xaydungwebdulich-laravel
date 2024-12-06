<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Type;

class TypeController extends Controller
{
    public function index()
    {
        $types = Type::all();
       
        return view('admin.type.list',compact('types'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.type.add');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $this->validate($request,
        [
            'typeName'=>'required|max:50|min:3|unique:types,name'
        ],
        [
            'typeName.required'=>'Bạn chưa nhập tên loại hình',
            'typeName.unique'=>'Tên loại hình đã tồn tại',
            'typeName.max'=>'Nhập tối đa 50 ký tự',
            'typeName.min'=>'Nhập tối thiểu 3 ký tự'
        ]);

        $type = new Type;
       
        $type->name = $request->typeName;
        $type->status = 0;  // Gán status là 0
       
        $type->save();
        return redirect()->route('types.index');
    }
    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
       
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        $type = Type::find($id);
        return view('admin.type.edit',compact('type'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $type = Type::find($id);
        $type->name = $request->typeName;
        $type->status = $request->status;
        $type->update();
        return redirect()->route('types.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
       
        $type = Type::find($id);
        $type->delete();
        return redirect()->route('types.index');
    }
}
