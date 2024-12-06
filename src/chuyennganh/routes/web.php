<?php

use App\Http\Controllers\Page\PageController;
use App\Http\Controllers\User\LoginController;
use App\Http\Controllers\User\SignupController;
use App\Http\Controllers\User\AuthController;
use App\Http\Controllers\Admin\TypeController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

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
Route::get('/types',[TypeController::class,'index'])->name('types.index');

// Route::get('/categories',[CategoryController::class,'index'])->name('categories.index');
