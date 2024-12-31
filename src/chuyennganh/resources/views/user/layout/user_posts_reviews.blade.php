@extends('user.master')

@section('content')
<div class="container mt-4">
    <h2 class="text-center">Bài viết của bạn</h2>
    @if($posts->isEmpty())
        <p class="text-center">Bạn chưa có bài viết nào.</p>
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
                
                <div class="d-flex justify-content-end">
                    <a href="{{ route('post.edit', $post->id) }}" class="btn btn-sm mr-2" style="background-color: orange">Sửa</a>
                    <form action="{{ route('post.destroy', $post->id) }}" method="POST" onsubmit="return confirm('Bạn có chắc chắn muốn xóa bài viết này không?');">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-sm" style="background-color: red">Xóa</button>
                    </form>
                </div>
            </div>
        </div>
        @endforeach
    @endif

    <h2 class="text-center mt-5">Đánh giá của bạn</h2>
    @if($reviews->isEmpty())
        <p class="text-center">Bạn chưa có đánh giá nào.</p>
    @else
        @foreach($reviews as $review)
        <div class="mb-4">
            <div class="card-body custom-body-post">
                <p class="card-text" style="font-size: 18px">{{ $review->comment }}</p>
                @if($review->location)
                    <p>Địa điểm: <strong>{{ $review->location->name }}</strong></p>
                @else
                    <p>Địa điểm: <strong>Địa điểm không tồn tại</strong></p>
                @endif
                <p>Đăng bởi: 
                    <img src="{{ asset('storage/images/' . ($review->user->image ?? 'default_avatar.jpg'))}}" alt="{{ $review->user->username }}" class="img-thumbnail" width="50">
                    <small class="text-muted">{{ $review->user->username }} vào lúc {{ $review->created_at->format('d/m/Y H:i') }}</small>
                </p>
                
                <div class="d-flex justify-content-end">
                    <a href="{{ route('reviews.edit', $review->id) }}" class="btn btn-sm mr-2" style="background-color: orange">Sửa</a>
                    <form action="{{ route('reviews.destroy', $review->id) }}" method="POST" onsubmit="return confirm('Bạn có chắc chắn muốn xóa đánh giá này không?');">
                        @csrf
                        @method('DELETE')
                        <button type="submit" class="btn btn-sm" style="background-color: red">Xóa</button>
                    </form>
                </div>
            </div>
        </div>
        @endforeach
    @endif
</div>
@endsection