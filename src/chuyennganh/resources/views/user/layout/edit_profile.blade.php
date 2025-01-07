@extends('user.master')

@section('content')
<div class="container mt-4">
    <div class="row justify-content-center">
        <div class="col-md-8">
                <h2 class="text-content">Cập nhật thông tin cá nhân</h2>

                <div class="card-body">
                    @if (session('success'))
                        <div class="alert alert-success">
                            {{ session('success') }}
                        </div>
                    @endif

                    @if ($errors->any())
                        <div class="alert alert-danger">
                            <ul>
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        </div>
                    @endif

                    <form method="POST" action="{{ route('profile.update') }}" enctype="multipart/form-data">
                        @csrf

                        <div class="form-group">
                            <label for="username">Tên người dùng</label>
                            <input type="text" class="form-control" value="{{ $user->username }}" disabled>
                        </div>

                        <div class="form-group mt-3">
                            <label for="email">Email</label>
                            <input type="email" class="form-control" value="{{ $user->email }}" disabled>
                        </div>

                        <div class="form-group mt-3">
                            <label for="password">Mật khẩu mới</label>
                            <input type="password" name="password" class="form-control">
                            <small class="form-text text-muted">Để trống nếu không muốn thay đổi mật khẩu.</small>
                        </div>

                        <div class="form-group mt-3">
                            <label for="password_confirmation">Xác nhận mật khẩu mới</label>
                            <input type="password" name="password_confirmation" class="form-control">
                        </div>

                        <div class="form-group mt-3">
                            <label for="image">Hình ảnh</label>
                            <input type="file" name="image" class="form-control-file">
                            @if ($user->image)
                                <img src="{{ asset('storage/images/' . $user->image) }}" alt="Avatar" class="img-thumbnail mt-2" width="150">
                            @endif
                        </div>
                        <div class="d-flex justify-content-end mt-auto">
                          <button type="submit" class="btn mt-3 mb-3" style="background-color: #65a30d">Cập nhật</button>
                      </div>
                        
                    </form>
            </div>
        </div>
    </div>
</div>
@endsection