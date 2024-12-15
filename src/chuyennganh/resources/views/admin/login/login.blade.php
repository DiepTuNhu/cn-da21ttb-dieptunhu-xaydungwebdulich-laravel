<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <base href="{{asset('')}}">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container d-flex justify-content-center align-items-center vh-100">
        <div class="card shadow-lg p-4" style="width: 400px;">
            <h3 class="text-center mb-4">Đăng nhập</h3>
            @include('admin.login.alert')

            <form action="{{route('login.store')}}" method="POST">
                @csrf
                @if(Session::has('flag'))
                <div class="alert alert-{{Session::get('flag')}}">{{Session::get('message')}}</div>
                @endif

                <div class="mb-3">
                    <label for="email" class="form-label">Email</label>
                    <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
                </div>

                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Enter your password" required>
                </div>

                {{-- <div class="d-flex justify-content-between align-items-center">
                    <div>
                        <input type="checkbox" id="remember" name="remember">
                        <label for="remember" class="form-label">Remember me</label>
                    </div>
                    <a href="/forgot-password" class="text-decoration-none">Forgot password?</a>
                </div> --}}

                <button type="submit" class="btn btn-primary w-100 mt-3">Login</button>
            </form>

            <div class="text-center mt-4">
                <span>Don't have an account?</span>
                <a href="/register" class="text-decoration-none">Sign up</a>
            </div>

            {{-- <hr class="my-3">
            <button class="btn btn-outline-secondary w-100">
                <img src="https://cdn-icons-png.flaticon.com/512/281/281764.png" alt="Google" width="20" class="me-2">
                Login with Google
            </button> --}}
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
