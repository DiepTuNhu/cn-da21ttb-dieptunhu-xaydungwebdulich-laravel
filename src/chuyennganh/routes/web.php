<?php
use App\Http\Controllers\Page\PageController;
use App\Http\Controllers\Page\ReviewController;
use App\Http\Controllers\User\LoginController;
use App\Http\Controllers\User\SignupController;
use App\Http\Controllers\User\AuthController;

use App\Http\Controllers\Admin\TypeController;
use App\Http\Controllers\Admin\RoleController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\Admin\ProvinceController;
use App\Http\Controllers\Admin\TypeOfUtilityController;
use App\Http\Controllers\Admin\LocationController;
use App\Http\Controllers\Admin\PhotoController;
use App\Http\Controllers\Admin\UtilityController;
use App\Http\Controllers\Admin\SlideController;
use App\Http\Controllers\Admin\ContactController as AdminContactController; // Đổi tên alias để tránh nhầm lẫn
use App\Http\Controllers\Page\ContactController as PageContactController; // Đổi tên alias để tránh nhầm lẫn
use App\Http\Controllers\Admin\PostController;

use App\Http\Controllers\CKEditorController;
use Illuminate\Support\Facades\Route;
use App\Models\Location;
use App\Http\Controllers\Page\UserPostController;

use App\Http\Controllers\Page\ProfileController;

// Route::get('/detail_location/{id}', [PageController::class, 'detailLocation'])->name('page.detail_location');

Route::middleware(['auth'])->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::post('/profile', [ProfileController::class, 'update'])->name('profile.update');
});
// Route::get('/', function () {
//     return view('user.index');
// });
Route::get('/', [PageController::class, 'index'])->name('page.index');
// Route::get('/search', [PageController::class, 'getSearch'])->name('search');  
Route::get('/search', [PageController::class, 'getSearch'])->name('search');
Route::get('/locations', [PageController::class, 'getLocationType'])->name('page.locationtype');
Route::get('/location', [PageController::class, 'getLocation'])->name('page.location');

Route::get('detail_location/{id}',[PageController::class,'getDetailLocation'])->name('page.detail_location');
Route::get('detail_utility/{id}',[PageController::class,'getDetailUtility'])->name('page.detail_utility');

//CONTACT
Route::get('/contact', [PageContactController::class, 'index'])->name('contact.index');
Route::post('/contact', [PageContactController::class, 'store'])->name('contact.store');

Route::get('/reviews', [ReviewController::class, 'index'])->name('reviews.index');
Route::post('/reviews', [ReviewController::class, 'store'])->name('reviews.store');
Route::get('/reviews/{id}/edit', [ReviewController::class, 'edit'])->name('reviews.edit');
Route::put('/reviews/{id}', [ReviewController::class, 'update'])->name('reviews.update');
Route::delete('/reviews/{id}', [ReviewController::class, 'destroy'])->name('reviews.destroy');

Route::get('/posts', [UserPostController::class, 'index'])->name('posts.index');
Route::get('/posts/create', [UserPostController::class, 'create'])->name('post.create');
Route::post('/posts', [UserPostController::class, 'store'])->name('post.store');
Route::get('/posts/{id}/edit', [UserPostController::class, 'edit'])->name('post.edit');
Route::put('/posts/{id}', [UserPostController::class, 'update'])->name('post.update');
Route::delete('/posts/{id}', [UserPostController::class, 'destroy'])->name('post.destroy');
Route::get('posts/location/{id_location}', [UserPostController::class, 'showByLocation'])->name('posts.byLocation');
Route::get('user/posts-reviews', [UserPostController::class, 'showUserPostsReviews'])->name('user.posts-reviews');

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

Route::post('/ckeditor/upload', [CKEditorController::class, 'upload'])->name('ckeditor.upload');
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

//TYPE OF UTILITY
Route::get('/typeofutilities',[TypeOfUtilityController::class,'index'])->name('typeofutilities.index');
Route::get('/typeofutilities/create',[TypeOfUtilityController::class,'create'])->name('typeofutilities.create');
Route::post('/typeofutilities',[TypeOfUtilityController::class,'store'])->name('typeofutilities.store');
Route::get('/typeofutilities/{id}/edit',[TypeOfUtilityController::class,'edit'])->name('typeofutilities.edit');
Route::post('/typeofutilities/{id}',[TypeOfUtilityController::class,'update'])->name('typeofutilities.update');
Route::get('/typeofutilities/{id}',[TypeOfUtilityController::class,'destroy'])->name('typeofutilities.destroy');

//LOCATION
Route::get('/locations',[LocationController::class,'index'])->name('locations.index');
Route::get('/locations/create',[LocationController::class,'create'])->name('locations.create');
Route::post('/locations',[LocationController::class,'store'])->name('locations.store');
Route::get('/locations/{id}/edit',[LocationController::class,'edit'])->name('locations.edit');
Route::post('/locations/{id}',[LocationController::class,'update'])->name('locations.update');
Route::get('/locations/{id}',[LocationController::class,'destroy'])->name('locations.destroy');

//PHOTO
Route::get('/photos',[PhotoController::class,'index'])->name('photos.index');
Route::get('/photos/create',[PhotoController::class,'create'])->name('photos.create');
Route::post('/photos',[PhotoController::class,'store'])->name('photos.store');
Route::get('/photos/{id}/edit',[PhotoController::class,'edit'])->name('photos.edit');
Route::post('/photos/{id}',[PhotoController::class,'update'])->name('photos.update');
Route::get('/photos/{id}',[PhotoController::class,'destroy'])->name('photos.destroy');

//UTILITY
Route::get('/utilities',[UtilityController::class,'index'])->name('utilities.index');
Route::get('/utilities/create',[UtilityController::class,'create'])->name('utilities.create');
Route::post('/utilities',[UtilityController::class,'store'])->name('utilities.store');
Route::get('/utilities/{id}/edit',[UtilityController::class,'edit'])->name('utilities.edit');
Route::post('/utilities/{id}',[UtilityController::class,'update'])->name('utilities.update');
Route::get('/utilities/{id}',[UtilityController::class,'destroy'])->name('utilities.destroy');

//SLIDE
Route::get('/slides',[SlideController::class,'index'])->name('slides.index');
Route::get('/slides/create',[SlideController::class,'create'])->name('slides.create');
Route::post('/slides',[SlideController::class,'store'])->name('slides.store');
Route::get('/slides/{id}/edit',[SlideController::class,'edit'])->name('slides.edit');
Route::post('/slides/{id}',[SlideController::class,'update'])->name('slides.update');
Route::get('/slides/{id}',[SlideController::class,'destroy'])->name('slides.destroy');

//REVIEWS
Route::get('reviews', [App\Http\Controllers\Admin\ReviewController::class, 'index'])->name('reviews.index');
Route::post('reviews/toggle-status/{id}', [App\Http\Controllers\Admin\ReviewController::class, 'toggleStatus'])->name('reviews.toggleStatus');
Route::delete('reviews/{id}', [App\Http\Controllers\Admin\ReviewController::class, 'destroy'])->name('reviews.destroy');

//CONTACT
Route::get('/admin/contacts', [AdminContactController::class, 'index'])->name('admin.contacts.index');
Route::post('/admin/contacts/toggle-status/{id}', [AdminContactController::class, 'toggleStatus'])->name('admin.contacts.toggleStatus');
Route::delete('/admin/contacts/{id}', [AdminContactController::class, 'destroy'])->name('admin.contacts.destroy');

// Route::get('/admin/posts', [App\Http\Controllers\Admin\PostController::class, 'index'])->name('admin.posts.index');

Route::prefix('admin')->group(function () {
    Route::get('posts', [PostController::class, 'index'])->name('admin.posts.index');
    Route::post('posts/{id}/toggle-status', [PostController::class, 'toggleStatus'])->name('admin.posts.toggleStatus');
    Route::delete('posts/{id}', [PostController::class, 'destroy'])->name('admin.posts.destroy');
});

//LOGOUT
Route::get('/logout',[LoginController::class,'logout'])->name('logout');
