<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Typeofutility;


class TypeOfUtilityController extends Controller
{
    public function index()
    {
        $typeofutilities = Typeofutility::all();
       
        return view('admin.typeofutility.list',compact('typeofutilities'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.typeofutility.add');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $this->validate($request,
        [
            'typeofutilityName'=>'required|max:50|min:3|unique:typeofutilities,name'
        ],
        [
            'typeofutilityName.required'=>'Bạn chưa nhập tên tiện ích',
            'typeofutilityName.unique'=>'Tên loại hình đã tồn tại',
            'typeofutilityName.max'=>'Nhập tối đa 50 ký tự',
            'typeofutilityName.min'=>'Nhập tối thiểu 3 ký tự'
        ]);

        $typeofutility = new Typeofutility;
       
        $typeofutility->name = $request->typeofutilityName;
        $typeofutility->status = 0;  // Gán status là 0
       
        $typeofutility->save();
        return redirect()->route('typeofutilities.index');
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
        $typeofutility = Typeofutility::find($id);
        return view('admin.typeofutility.edit',compact('typeofutility'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $typeofutility = Typeofutility::find($id);
        $typeofutility->name = $request->typeofutilityName;
        $typeofutility->status = $request->status;
        $typeofutility->update();
        return redirect()->route('typeofutilities.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
       
        $typeofutility = Typeofutility::find($id);
        $typeofutility->delete();
        return redirect()->route('typeofutilities.index');
    }
}
