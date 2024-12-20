<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\View;  // Thêm dòng này để sử dụng View composer
use App\Models\Type;  // Thêm dòng này để sử dụng model Type
use App\Models\Province;  // Thêm dòng này để sử dụng model Province

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        // Đăng ký custom validation rule cho số điện thoại Việt Nam
        Validator::extend('phone_vn', function ($attribute, $value, $parameters, $validator) {
            // Kiểm tra số điện thoại theo định dạng (0 hoặc +84, theo sau là 9 số)
            return preg_match('/^(0|\+84)[1-9][0-9]{8}$/', $value);
        });

    

        View::composer('*', function ($view) {
            $types = Type::all();
            $provinces = Province::all();
            
            // Truyền dữ liệu vào view
            $view->with('types', $types);
            $view->with('provinces', $provinces);
        });
    }
}
