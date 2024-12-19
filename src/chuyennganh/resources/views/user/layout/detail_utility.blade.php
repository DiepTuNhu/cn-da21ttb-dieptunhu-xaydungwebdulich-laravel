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
        <!-- Google Map -->
        <div class="mt-5">
            <iframe 
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.706663756334!2d106.34526271411637!3d10.837862761297705!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x310b5ec77c497c4f%3A0xe5c6c7c94f7dc7b1!2zQW8gQsOgIE9tLCBUcsOgIFZpbmg!5e0!3m2!1sen!2s!4v1696854681558" 
                width="100%" 
                height="400" 
                style="border:0;" 
                allowfullscreen="" 
                loading="lazy">
            </iframe>
        </div>
    </div>
<!-- Tiêu đề và Thẻ Ẩm Thực -->
<div class="container mt-5">
    <h4 class="text-center mb-4"><strong>Ẩm thực</strong></h4>
    <div class="row row-cols-1 row-cols-md-4 g-4">
        <!-- Thẻ 1 -->
        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/300x200" class="card-img-top" alt="Món ăn 1">
                <div class="card-body">
                    <h5 class="card-title">Bánh tét Trà Cuôn</h5>
                    <p class="card-text">Đặc sản nổi tiếng với hương vị thơm ngon và đậm đà.</p>
                </div>
            </div>
        </div>
        <!-- Thẻ 2 -->
        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/300x200" class="card-img-top" alt="Món ăn 2">
                <div class="card-body">
                    <h5 class="card-title">Cháo ám</h5>
                    <p class="card-text">Món cháo độc đáo với cá lóc và các loại rau đặc trưng.</p>
                </div>
            </div>
        </div>
        <!-- Thẻ 3 -->
        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/300x200" class="card-img-top" alt="Món ăn 3">
                <div class="card-body">
                    <h5 class="card-title">Bún nước lèo</h5>
                    <p class="card-text">Món bún đậm đà mang hương vị đặc trưng của vùng đất Trà Vinh.</p>
                </div>
            </div>
        </div>
        <!-- Thẻ 4 -->
        <div class="col">
            <div class="card h-100">
                <img src="https://via.placeholder.com/300x200" class="card-img-top" alt="Món ăn 4">
                <div class="card-body">
                    <h5 class="card-title">Dừa sáp</h5>
                    <p class="card-text">Đặc sản nổi tiếng với lớp cơm dày và mềm dẻo của dừa.</p>
                </div>
            </div>
        </div>
    </div>
</div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
