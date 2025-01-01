@extends('user.master')

@section('content')
<div class="container">
    @if($posts->isEmpty())
        <h2 class="text-center mt-5">Địa điểm này chưa có bài viết nào.</h2>
    @else
        @foreach($posts as $post)
        <div class="mb-4">
            <div class="card-body custom-body-post">
                <h2 class="card-title mt-5" style="font-size: 30px">{{ $post->title }}</h2>
                <div class="card-text" style="font-size: 18px">{!! $post->content !!}</div>
                <p>Địa điểm: <strong>{{ $post->location->name }}</strong></p>
                <p>Đăng bởi: 
                    <img src="{{ asset('storage/images/' . ($post->user->image ?? 'default_avatar.jpg'))}}" alt="{{ $post->user->username }}" class="img-thumbnail" width="50">
                    <small class="text-muted">{{ $post->user->username }} vào lúc {{ $post->created_at->format('d/m/Y H:i') }}</small>
                </p>
                
                @if(Auth::check() && Auth::id() == $post->id_user)
                <div class="d-flex justify-content-end">
                    <a href="{{ route('post.edit', $post->id) }}" class="btn btn-sm mr-2" style="background-color: orange">Sửa</a>
                    <form action="{{ route('post.destroy', $post->id) }}" method="POST" onsubmit="return confirm('Bạn có chắc chắn muốn xóa bài viết này không?');">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-sm" style="background-color: red">Xóa</button>
                    </form>
                </div>
                @endif
            </div>
        </div>
        @endforeach
    @endif
</div>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        const contentImages = document.querySelectorAll('.card-text img');
        contentImages.forEach(img => {
            img.classList.add('content-image'); // Thêm class bổ sung
        });

        // Thêm lớp CSS tùy chỉnh cho các bảng
        const contentTables = document.querySelectorAll('.card-text table');
        contentTables.forEach(table => {
            table.classList.add('table-custom');
        });
    });
</script>
@endsection
