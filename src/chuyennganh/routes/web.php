<?php

use App\Http\Controllers\Page\PageController;
use App\Http\Controllers\User\LoginController;
use App\Http\Controllers\User\SignupController;
use App\Http\Controllers\User\AuthController;
use App\Http\Controllers\Admin\TypeController;
use App\Http\Controllers\Admin\RoleController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\Admin\ProvinceController;
use Illuminate\Support\Facades\Route;


// Route::get('/', function () {
//     return view('user.index');
// });
Route::get('/', [PageController::class, 'index'])->name('page.index');

//LOGIN
Route::get('admin/login',[LoginController::class,'index'])->name('login');
Route::post('admin/login/store',[LoginController::class,'store'])->name('login.store');

//GOOGLE LOGIN
// Route::get('/auth/google', [AuthController::class, 'redirectToGoogle'])->name('google.login');
// Route::get('/auth/google/callback', [AuthController::class, 'handleGoogleCallback']);

//REGISTER
Route::get('register',[SignupController::class,'index'])->name('register');
Route::post('xulydangky',[SignupController::class,'postSignup'])->name('postSignup');

// //LOGOUT
Route::post('/page/logout', [AuthController::class, 'logout'])->name('page.logout');

// ADMIN=========================================================================================================

//TYPE LOCATION
Route::get('/types',[TypeController::class,'index'])->name('types.index');
Route::get('/types/create',[TypeController::class,'create'])->name('types.create');
Route::post('/types',[TypeController::class,'store'])->name('types.store');
Route::get('/types/{id}/edit',[TypeController::class,'edit'])->name('types.edit');
Route::post('/types/{id}',[TypeController::class,'update'])->name('types.update');
Route::get('/types/{id}',[TypeController::class,'destroy'])->name('types.destroy');

//ROLE
Route::get('/roles',[RoleController::class,'index'])->name('roles.index');
Route::get('/roles/create',[RoleController::class,'create'])->name('roles.create');
Route::post('/roles',[RoleController::class,'store'])->name('roles.store');
Route::get('/roles/{id}/edit',[RoleController::class,'edit'])->name('roles.edit');
Route::post('/roles/{id}',[RoleController::class,'update'])->name('roles.update');
Route::get('/roles/{id}',[RoleController::class,'destroy'])->name('roles.destroy');

//USER
Route::get('/users',[UserController::class,'index'])->name('users.index');
Route::get('/users/create',[UserController::class,'create'])->name('users.create');
Route::post('/users',[UserController::class,'store'])->name('users.store');
Route::get('/users/{id}/edit',[UserController::class,'edit'])->name('users.edit');
Route::post('/users/{id}',[UserController::class,'update'])->name('users.update');
Route::get('/users/{id}',[UserController::class,'destroy'])->name('users.destroy');

//PROVINCE
Route::get('/provinces',[ProvinceController::class,'index'])->name('provinces.index');
Route::get('/provinces/create',[ProvinceController::class,'create'])->name('provinces.create');
Route::post('/provinces',[ProvinceController::class,'store'])->name('provinces.store');
Route::get('/provinces/{id}/edit',[ProvinceController::class,'edit'])->name('provinces.edit');
Route::post('/provincesv/{id}',[ProvinceController::class,'update'])->name('provinces.update');
Route::get('/provinces/{id}',[ProvinceController::class,'destroy'])->name('provinces.destroy');