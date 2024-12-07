<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Province;

class ProvinceController extends Controller
{
    public function index()
    {
        $provinces = Province::all();
       
        return view('admin.province.list',compact('provinces'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.province.add');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $this->validate($request,
        [
            'provinceName'=>'required|max:50|min:3|unique:provinces,name'
        ],
        [
            'provinceName.required'=>'Bạn chưa nhập tên tỉnh/thành phố',
            'provinceName.unique'=>'Tên tỉnh/thành phố đã tồn tại',
            'provinceName.max'=>'Nhập tối đa 50 ký tự',
            'provinceName.min'=>'Nhập tối thiểu 3 ký tự'
        ]);

        $province = new Province;
       
        $province->name = $request->provinceName;
        $province->status = 0;  // Gán status là 0
       
        $province->save();
        return redirect()->route('provinces.index');
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
        $province = Province::find($id);
        return view('admin.province.edit',compact('province'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        $province = Province::find($id);
        $province->name = $request->provinceName;
        $province->status = $request->status;
        $province->update();
        return redirect()->route('provinces.index');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
       
        $province = Province::find($id);
        $province->delete();
        return redirect()->route('provinces.index');
    }
}
