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
                  <h2><strong>{{ $detail_location->name }}</strong></h2>
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
    {{-- </div> --}}

            <!-- Phần Giới thiệu -->
            <div class="mt-5">
                <h4><strong>Giới thiệu</strong></h4>
                <div id="full-description" style="text-align: justify;">
                  {!! $detail_location->description !!} <!-- Giữ nguyên các dòng mới trong nội dung -->
                </div>
              </div>     
          </div>
      
          
          <div class="container mt-5 p-2" style="border-left: 8px solid #365314; background-color:rgba(77, 124, 15, 0.8); border-radius:5px">
              <h4 style="margin: 0;">Các dịch vụ gần đây</h4>
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
                                  <h5 class="card-title">{{ $utility->name }}</h5>
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
                                  <h5 class="card-title">{{ $utility->name }}</h5>
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
    {{-- <link href="{{ asset('css/custom.css') }}" rel="stylesheet"> <!-- Bao gồm tệp CSS chung --> --}}
    <link rel="stylesheet" href="css/style.css" />
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.3.3/js/bootstrap.bundle.min.js"></script>

    <!-- Gắn sự kiện cho dropdown -->
    <script>
        $(document).ready(function() {
            // Gắn sự kiện cho dropdown
            $('.dropdown-toggle').dropdown();
        });
    </script>
@endsection