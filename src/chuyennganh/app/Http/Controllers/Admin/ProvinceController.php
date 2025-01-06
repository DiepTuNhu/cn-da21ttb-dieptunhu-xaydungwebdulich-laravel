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
        $request->validate([
            'provinceName' => 'required|string|max:255',
            'provinceCode' => 'required|numeric',
        ]);

        $province = new Province();
        $province->name = $request->provinceName;
        $province->code = $request->provinceCode;
        $province->status = 0; // Default status
        $province->save();

        return redirect()->route('provinces.index')->with('success', 'Tỉnh/thành phố đã được thêm thành công.');
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
        return view('admin.province.edit', compact('province'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $request->validate([
            'provinceName' => 'required|string|max:255',
            'provinceCode' => 'required|numeric',
            'status' => 'required|integer',
        ]);

        $province = Province::findOrFail($id);
        $province->name = $request->provinceName;
        $province->code = $request->provinceCode;
        $province->status = $request->status;
        $province->save();

        return redirect()->route('provinces.index')->with('success', 'Tỉnh/thành phố đã được cập nhật thành công.');
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
