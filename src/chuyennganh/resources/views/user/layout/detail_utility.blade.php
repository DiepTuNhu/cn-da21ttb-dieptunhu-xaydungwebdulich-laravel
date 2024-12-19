@extends('user.master')
@section('content')
    <!-- Content -->
    <div class="container mt-4">
      <div class="row">
        <!-- Phần hình chính và thông tin tóm tắt -->
        <div class="col-md-6 d-flex flex-column">
          <img src="{{ $imageUrl }}" alt="{{ $detail_utility->name }}" class="img-fluid rounded mb-3">

        </div>
    
        <!-- Thông tin tóm tắt -->
        <div class="col-md-6 d-flex align-items-center">
            <div>
                <h3><strong>{{ $detail_utility->name }}</strong></h3>
                <ul class="list-unstyled mt-3">
                    <li class="summary"><strong>Địa chỉ:</strong> {{ $detail_utility->address }}</li>
                    <li class="summary"><strong>Loại dịch vụ:</strong> {{ $detail_utility->typeofutility->name }}</li>
                    <li class="summary"><strong>Giờ phục vụ:</strong> {{ $detail_utility->time }}</li>
                    <li class="summary"><strong>Số điện thoại:</strong> {{ $detail_utility->phonenumber }}</li>
                    <li class="summary"><strong>Xếp hạng:</strong> {{ $detail_utility->rank }}</li>
                    <li class="summary"><strong>Khoảng cách:</strong> {{ $detail_utility->distance }} km</li>
                    <li class="summary"><strong>Giá tham khảo:</strong> {{ $detail_utility->price ? $detail_utility->price : 'Miễn phí' }}</li>
                </ul>
            </div>
        </div>
    </div>
    
    <!-- Phần Giới thiệu -->
    <div class="mt-5">
      <h4><strong>Giới thiệu</strong></h4>
      <div id="full-description" style="text-align: justify;">
        {!! $detail_utility->description !!} <!-- Giữ nguyên các dòng mới trong nội dung -->
      </div>
    </div>
    <div class="mt-5">
        <iframe 
            src="https://www.google.com/maps/embed/v1/place?key=AIzaSyDhmbf1S5U1T5iD0FAZ24VqxShFSvGB8Ds&q={{ urlencode($full_address) }}" 
            width="100%" 
            height="300" 
            style="border:0;" 
            allowfullscreen="" 
            loading="lazy">
        </iframe>
    </div>
    </div>
<!-- Tiêu đề và Thẻ Ẩm Thực -->
<div class="container mt-5 mb-5 card-container-detlo">
    <h4 class="text-center mb-4"><strong>Địa điểm du lịch gần đó</strong></h4>
    <div class="row row-cols-1 row-cols-md-4 g-4">
        @if ($locations->isEmpty())
            <div class="col-12">
                <p class="text-center text-muted">Hiện tại không có địa điểm nào.</p>
            </div>
        @else
            @foreach ($locations as $location)
                <div class="col">
                    <div class="card h-100">
                        <!-- Hình ảnh địa điểm -->
                        <img src="{{ $location->photo ? asset('storage/location_image/' . $location->photo) : 'https://via.placeholder.com/600x400' }}" 
                             class="card-img-top" 
                             alt="{{ $location->name }}">
    
                        <div class="card-body">
                            <!-- Tên và địa chỉ địa điểm -->
                            <h5 class="card-title">{{ $location->name }}</h5>
                            <p class="card-text">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" style="fill: rgba(101, 163, 13, 1); padding: 2px;">
                                    <path d="M12 2C7.589 2 4 5.589 4 9.995 3.971 16.44 11.696 21.784 12 22c0 0 8.029-5.56 8-12 0-4.411-3.589-8-8-8zm0 12c-2.21 0-4-1.79-4-4s1.79-4 4-4 4 1.79 4 4-1.79 4-4 4z"></path>
                                </svg>
                                {{ $location->address }}</p>
    
                            <!-- Liên kết chi tiết -->
                            <a href="{{ route('page.detail_location', ['id' => $location->id]) }}" 
                               class="btn btn-primary">Xem chi tiết</a>
                        </div>
                    </div>
                </div>
            @endforeach
        @endif
    </div>
    
    

    
    
</div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
