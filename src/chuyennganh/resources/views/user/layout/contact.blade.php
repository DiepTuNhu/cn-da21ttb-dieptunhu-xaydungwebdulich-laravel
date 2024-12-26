@extends('user.master')

@section('content')
<div class="container-fluid d-flex justify-content-center">
    <div class="w-100" style="max-width: 600px;">
        <h1 class="text-center mb-4 mt-4">Liên hệ với chúng tôi</h1>
        @if(session('success'))
            <div class="alert alert-success text-center">
                {{ session('success') }}
            </div>
        @endif
        @if(session('error'))
            <div class="alert alert-danger text-center">
                {{ session('error') }}
            </div>
        @endif
        <form action="{{ route('contact.store') }}" method="POST" style="height: 50vh">
            @csrf
            <div class="form-group">
                <label for="sender">Tên</label>
                <input type="text" class="form-control" id="sender" name="sender" required>
            </div>
            <div class="form-group mt-3 mb-3">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="content">Phản hồi</label>
                <textarea class="form-control" id="content" name="content" rows="5" required></textarea>
            </div>
            <div class="d-flex justify-content-end mt-auto">
                <button type="submit" class="btn mt-3" style="background-color: #65a30d">Gửi</button>
            </div>
        </form>
    </div>
</div>
@endsection
