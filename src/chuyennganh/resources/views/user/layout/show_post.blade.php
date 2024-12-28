@extends('user.master')

@section('content')
<div class="container">
    <h1 class="my-4 text-center">Tất cả các bài viết</h1>
    @foreach($posts as $post)
    <div class="mb-4">
        <div class="card-body">
            <h2 class="card-title" style="font-size: 30px">{{ $post->title }}</h2>
            <div class="card-text" style="font-size: 20px">{!! $post->content !!}</div>
            <p>Địa điểm: <strong>{{ $post->location->name }}</strong></p>
            <p>Đăng bởi: 
                <img src="{{ asset('storage/images/' . ($post->user->image ?? 'default_avatar.jpg'))}}" alt="{{ $post->user->username }}" class="img-thumbnail" width="50">
                <small class="text-muted">{{ $post->user->username }} vào lúc {{ $post->created_at->format('d/m/Y H:i') }}</small>
            </p>
            
            @if(Auth::check() && Auth::id() == $post->id_user)
            <div class="d-flex justify-content-end">
                <a href="{{ route('post.edit', $post->id) }}" class="btn btn-primary btn-sm mr-2">Sửa</a>
                <form action="{{ route('post.destroy', $post->id) }}" method="POST" onsubmit="return confirm('Bạn có chắc chắn muốn xóa bài viết này không?');">
                    @csrf
                    @method('DELETE')
                    <button type="submit" class="btn btn-danger btn-sm">Xóa</button>
                </form>
            </div>
            @endif
        </div>
    </div>
    <hr>
    @endforeach
</div>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        const contentImages = document.querySelectorAll('.card-text img');
        contentImages.forEach(img => {
            img.classList.add('content-image'); // Thêm class bổ sung
        });
    });
</script>
@endsection
