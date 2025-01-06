@extends('user.master')
@section('content')
    <div class="container mt-4">
        <div class="row">
            <!-- Phần hình chính và thông tin tóm tắt -->
            <div class="col-md-6 d-flex flex-column">
              <!-- Hình lớn -->
              <img src="{{ asset('storage/location_image/' . ($main_photo ? $main_photo->name : 'default_image.jpg')) }}" alt="Hình lớn" class="img-fluid rounded mb-3">
              
              <!-- 4 Hình nhỏ nằm ngang -->
              <div class="row g-2"> <!-- Dùng g-2 để giảm khoảng cách giữa các phần tử -->
                  @foreach ($small_photos as $photo)
                      <div class="col-3 d-flex justify-content-center">
                          <img src="{{ asset('storage/location_image/' . $photo->name) }}" alt="Hình nhỏ" class="img-fluid rounded img-hover-zoom">
                      </div>
                  @endforeach
              </div>
          </div>
          
            <!-- Thông tin tóm tắt -->
            <div class="col-md-6">
              <div>
                  <h2 style=" margin-right: 20px;"><strong>{{ $detail_location->name }}</strong></h2>
                  <a href="{{ route('post.create', ['id_location' => $detail_location->id]) }}" class="btn mb-3" style="background-color: #65a30d;">Đăng bài viết</a>
                  <a href="{{ route('posts.byLocation', ['id_location' => $detail_location->id]) }}" class="btn mb-3" style="background-color: #65a30d;">Xem bài viết liên quan</a>
                  <ul class="list-unstyled mt-3">
                      <li class="summary"><strong>📍 Địa chỉ:</strong> {{ $detail_location->address }}</li>
                      <li class="summary"><strong>🗂 Loại hình du lịch:</strong> {{ $detail_location->types->name }}</li>
                      <li class="summary"><strong>💵 Giá tham khảo:</strong> {{ $detail_location->price }}</li>
                  </ul>
              </div>

              <!-- Google Map -->
              <div class="mt-5">
                <iframe 
                  src="https://www.google.com/maps/embed/v1/place?key={{ env('GOOGLE_MAPS_API_KEY') }}&q={{ urlencode($full_address) }}" 
                  width="100%" 
                  height="300" 
                  style="border:0;" 
                  allowfullscreen="" 
                  loading="lazy">
                </iframe>
              </div>
            </div>
        </div>

        <!-- Phần Giới thiệu -->
        <div class="mt-5">
            <h4><strong>Giới thiệu</strong></h4>
            <div id="full-description" style="text-align: justify;">
              {!! $detail_location->description !!} <!-- Giữ nguyên các dòng mới trong nội dung -->
            </div>
        </div>     

        <!-- Phần Đánh giá -->
        <div class="mt-5">
            <h4><strong>Đánh giá</strong></h4>
            @auth
                <form action="{{ route('reviews.store') }}" method="POST" onsubmit="return validateForm()">
                    @csrf
                    <input type="hidden" name="id_location" value="{{ $detail_location->id }}">
                    <div class="form-group">
                        <label for="rating">Chọn cấp độ sao:</label>    
                        <div id="star-rating" class="d-flex">
                            @for ($i = 1; $i <= 5; $i++)
                                <span class="star" data-value="{{ $i }}">&#9733;</span>
                            @endfor
                        </div>
                        <input type="hidden" name="rating" id="rating" value="0">
                    </div>
                    <div class="form-group mt-3">
                        <label for="comment">Nhận xét:</label>
                        <textarea class="form-control" id="comment" name="comment" rows="3" required></textarea>
                    </div>
                    <button type="submit" class="btn btn-submit mt-3">Gửi đánh giá</button>
                </form>
            @else
                <p>Hãy <a href="{{ route('login') }}">đăng nhập</a> để đánh giá địa điểm này.</p>
            @endauth

            <!-- Hiển thị các đánh giá -->
            <div class="mt-5">
                <h4><strong>Các đánh giá</strong></h4>
                @if($reviews->isEmpty())
                    <p>Chưa có đánh giá nào.</p>
                @else
                    @foreach($reviews as $review)
                        <div class="review mt-3 position-relative">
                            <div class="d-flex align-items-center">
                                <img src="{{ asset('storage/images/' . ($review->user->image ?? 'default_avatar.jpg')) }}" alt="Avatar" class="rounded-circle" width="50" height="50">
                                <h5 class="ml-3 mb-0 m-3">{{ $review->user->username }}</h5>
                                @if(Auth::id() == $review->id_user)
                                    <div class="dropdown-comment position-absolute top-0 end-0">
                                        <button class="btn btn-sm dropdown-toggle no-border no-shadow" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                                            &#x22EE;
                                        </button>
                                        <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                            <li><a class="dropdown-item" href="{{ route('reviews.edit', $review->id) }}">Sửa</a></li>
                                            <li>
                                                <form action="{{ route('reviews.destroy', $review->id) }}" method="POST" class="d-inline" onsubmit="return confirmDelete()">
                                                    @csrf
                                                    @method('DELETE')
                                                    <button type="submit" class="dropdown-item">Xóa</button>
                                                </form>
                                            </li>
                                        </ul>
                                    </div>
                                @endif
                            </div>
                            <div class="ml-3">
                                <div class="rating d-flex align-items-center">
                                    @for ($i = 1; $i <= 5; $i++)
                                        <span class="star {{ $i <= $review->point ? 'selected' : '' }}">&#9733;</span>
                                    @endfor
                                </div>
                                <span>{{ $review->created_at->format('d/m/Y H:i') }}</span>
                                <p style="font-weight:bold;">{{ $review->comment }}</p>
                            </div>
                        </div>
                    @endforeach
                @endif
            </div>
        </div>
    </div>
    <div class="container mt-5 p-2" style="border-left: 8px solid #365314; background-color:rgba(77, 124, 15, 0.8); border-radius:5px">
        <h4 style="margin: 0; color:white">Các dịch vụ gần đây</h4>
    </div>
    
<!-- Tiêu đề và Thẻ Ẩm Thực -->
<div class="container mt-5 card-container-detlo">
    <h4 class="text-center mb-4"><strong>Ẩm thực</strong></h4>
    <div class="row row-cols-1 row-cols-md-4 g-4">
        @if ($utilities->isEmpty())
            <div class="col-12">
                <p class="text-center text-muted">Hiện tại không có địa điểm nào.</p>
            </div>
        @else
            @foreach ($utilities as $utility)
                <div class="col">
                    <div class="card h-100">
                        <img src="{{ asset('storage/utility_image/' . $utility->image) }}" 
                             class="card-img-top" 
                             alt="{{ $utility->name }}">
                        <div class="card-body">
                            <h4 class="card-title">{{ $utility->name }}</h4>
                            <p class="card-text">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" style="fill: rgba(101, 163, 13, 1); padding: 2px;">
                                    <path d="M12 2C7.589 2 4 5.589 4 9.995 3.971 16.44 11.696 21.784 12 22c0 0 8.029-5.56 8-12 0-4.411-3.589-8-8-8zm0 12c-2.21 0-4-1.79-4-4s1.79-4 4-4 4 1.79 4 4-1.79 4-4 4z"></path>
                                </svg>
                                {{ $utility->address }}</p>
                            <a href="{{ route('page.detail_utility', ['id' => $utility->id]) }}" 
                               class="btn btn-primary">Xem chi tiết</a>
                        </div>
                    </div>
                </div>
            @endforeach
        @endif
    </div>
</div>


<!-- Tiêu đề và Thẻ lưu trú -->
<div class="container mt-5 mb-5 card-container-detlo">
    <h4 class="text-center mb-4"><strong>Lưu trú</strong></h4>
    <div class="row row-cols-1 row-cols-md-4 g-4">
        @if ($utilities1->isEmpty())
            <div class="col-12">
                <p class="text-center text-muted">Hiện tại không có địa điểm nào.</p>
            </div>
        @else
            @foreach ($utilities1 as $utility)
                <div class="col">
                    <div class="card h-100">
                        <img src="{{ asset('storage/utility_image/' . $utility->image) }}" 
                             class="card-img-top" 
                             alt="{{ $utility->name }}">
                        <div class="card-body">
                            <h4 class="card-title">{{ $utility->name }}</h4>
                            <p class="card-text">{{ $utility->address }}</p>
                            <a href="{{ route('page.detail_utility', ['id' => $utility->id]) }}" 
                               class="btn btn-primary">Xem chi tiết</a>
                        </div>
                    </div>
                </div>
            @endforeach
        @endif
    </div>
</div>
    <!-- Bao gồm các thư viện CSS và JavaScript cần thiết -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.3.3/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/style.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>

    <!-- Gắn sự kiện cho dropdown -->
    <script>
        $(document).ready(function() {
            // Gắn sự kiện cho dropdown
            $('.dropdown-toggle').dropdown();

            // Gắn sự kiện cho đánh giá sao
            $('.star').on('click', function() {
                var rating = $(this).data('value');
                $('#rating').val(rating);
                $('.star').removeClass('selected');
                $(this).addClass('selected');
                $(this).prevAll().addClass('selected');
            });
        });

        function toggleEditForm(reviewId) {
            const editForm = document.getElementById(`edit-form-${reviewId}`);
            if (editForm.style.display === 'none') {
                editForm.style.display = 'block';
            } else {
                editForm.style.display = 'none';
            }
        }

        function setRating(rating, reviewId) {
            document.getElementById(`rating-${reviewId}`).value = rating;
            const stars = document.querySelectorAll(`#edit-form-${reviewId} .star`);
            stars.forEach((star, index) => {
                if (index < rating) {
                    star.classList.add('selected');
                } else {
                    star.classList.remove('selected');
                }
            });
        }

        function confirmDelete() {
            return confirm('Bạn có chắc chắn muốn xóa đánh giá này không?');
        }

        function validateForm() {
            const rating = document.getElementById('rating').value;
            if (rating == 0) {
                alert('Vui lòng chọn cấp độ sao trước khi gửi đánh giá.');
                return false;
            }
            return true;
        }
    </script>
@endsection

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ $detail_location->name }}</div>

                <div class="card-body">
                    <!-- Nút đăng bài viết -->
                    <a href="{{ route('post.create', ['id_location' => $detail_location->id]) }}" class="btn btn-primary mb-3">Đăng bài viết</a>

                    <!-- Nội dung chi tiết địa điểm -->
                    <p>{{ $detail_location->description }}</p>
                    <!-- Các nội dung khác của địa điểm -->
                </div>
            </div>
        </div>
    </div>
</div>
@endsection