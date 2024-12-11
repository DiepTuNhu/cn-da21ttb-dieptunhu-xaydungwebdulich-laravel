<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Validator;

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
    }
}
