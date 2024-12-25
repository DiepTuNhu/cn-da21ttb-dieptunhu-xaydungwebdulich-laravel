@extends('user.master')
@section('content')
    <div class="container mt-4">
        <h4><strong>Chỉnh sửa đánh giá</strong></h4>
        <form action="{{ route('reviews.update', $review->id) }}" method="POST">
            @csrf
            @method('PUT')
            <div class="form-group">
                <label for="rating">Chọn cấp độ sao:</label>
                <div id="star-rating" class="d-flex">
                    @for ($i = 1; $i <= 5; $i++)
                        <span class="star {{ $i <= $review->point ? 'selected' : '' }}" data-value="{{ $i }}">&#9733;</span>
                    @endfor
                </div>
                <input type="hidden" name="rating" id="rating" value="{{ $review->point }}">
            </div>
            <div class="form-group mt-3">
                <label for="comment">Nhận xét:</label>
                <textarea class="form-control" id="comment" name="comment" rows="3" required>{{ $review->comment }}</textarea>
            </div>
            <button type="submit" class="btn btn-submit mt-3 mb-3">Cập nhật đánh giá</button>
        </form>
    </div>

    <script>
        $(document).ready(function() {
            $('.star').on('click', function() {
                var rating = $(this).data('value');
                $('#rating').val(rating);
                $('.star').removeClass('selected');
                $(this).addClass('selected');
                $(this).prevAll().addClass('selected');
            });
        });
    </script>

    <style>
        .star {
            font-size: 2rem;
            color: #ddd;
            cursor: pointer;
        }
        .star.selected {
            color: #f39c12;
        }
    </style>
@endsection