@extends('user.master')
@section('content')
@include('user.layout.search')
<div class="introduce">
  <h1>Đôi nét về du lịch tại Đồng bằng sông Cửu Long</h1>
  <div class="introduce">
    <div class="content-container">
      <div class="image-section">
        <img src="./images/honchong.jpg" alt="Mũi Cà Mau" />
      </div>
      <div class="text-section">
        <p>
          ĐBSCL có hệ sinh thái đa dạng và đặc sắc, từ hệ sinh thái biển, đảo, cửa sông, đất
          ngập nước, rừng ngập mặn, cù lao châu thổ, với nhiều khu dự trữ sinh quyển, vườn quốc
          gia, khu bảo tồn thiên nhiên có tính đa dạng sinh học cao, thuộc hàng quý hiếm trên
          thế giới.
        </p>
        <p>
          Đây là những tài nguyên rất quý giá cho phát triển du lịch sinh thái, cùng với hơn 700
          km bờ biển và hơn 145 hòn đảo lớn, nhỏ cùng với nhiều bãi tắm đẹp, hoang sơ: Mũi Nai,
          Hòn Chông, Hòn Khoai, Ba Động...
        </p>
      </div>
    </div>
  </div>
  <div class="introduce">
    <div class="content-container">
      <div class="text-section">
        <p>
          Nằm ở hạ lưu sông Mê Kông, con sông lớn nhất Đông Nam Á, với hai nhánh sông Tiền và
          sông Hậu. ĐBSCL có diện tích tự nhiên gần 40.000 km2, bằng 5,6% diện tích của lưu vực,
          với mạng lưới sông ngòi kênh rạch chằng chịt, được mệnh danh là “thế giới sông nước”.
        </p>
        <p>
          Từ lâu loại hình du lịch bằng tàu, ghe len lỏi vào sâu trong các kênh rạch, trải
          nghiệm cuộc sống mộc mạc, thơ mộng của người dân vùng sông nước đã rất hấp dẫn du
          khách khi đến với ĐBSCL với nhiều loại hình du lịch, kể cả loại hình du lịch tâm linh.
        </p>
      </div>
      <div class="image-section">
        <img src="./images/muicamau.jpg" alt="Mũi Cà Mau" />
      </div>
    </div>
  </div>
</div>
<!-- Swiper -->
<div class="carousel-container">
  <img class="img" height="100%" width="100%" src="./images/hoa.png" alt="" />
  <div class="swiper">
      <div class="swiper-wrapper">
          @foreach ($locations as $location)
              <div class="swiper-slide">
                  <div class="card position-relative">
                      <span class="badge hot-badge position-absolute">Hot</span>

                      <!-- Lấy hình ảnh liên quan đến địa điểm -->
                      @php
                          $photo = $location->photos()->where('status', 2)->first(); // Lấy hình ảnh chính (status = 0)
                      @endphp
                      @if($photo)
                          <img class="card-img-top" src="{{ asset('storage/location_image/' . $photo->name) }}" alt="Card image" />
                      @else
                          <img class="card-img-top" src="path_to_default_image.jpg" alt="Card image" />
                      @endif

                      <div class="card-body">
                          <h4 class="card-title">{{ $location->name }}</h4>
                          <p class="card-text">
                              <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" style="fill: rgba(101, 163, 13, 1); padding: 2px;">
                                  <path d="M12 2C7.589 2 4 5.589 4 9.995 3.971 16.44 11.696 21.784 12 22c0 0 8.029-5.56 8-12 0-4.411-3.589-8-8-8zm0 12c-2.21 0-4-1.79-4-4s1.79-4 4-4 4 1.79 4 4-1.79 4-4 4z"></path>
                              </svg>
                              {{ $location->address }}
                          </p>
                          <a href="{{ route('page.detail_location', ['id' => $location->id]) }}" class="btn">Xem chi tiết</a>

                      </div>
                  </div>
              </div>
          @endforeach
      </div>

      <!-- Navigation buttons -->
      <div class="swiper-button-prev"></div>
      <div class="swiper-button-next"></div>
  </div>
</div>

<div class="container-fluid container-location">
  <h2 class="text-content p-4 m-0">Những nơi tham quan đặc sắc</h2>
  <h5 class="text-content m-0" style="padding: 0 320px 40px 320px">
    Đồng bằng sông Cửu Long hay còn gọi là miền Tây có nhiều địa điểm du lịch rất hấp dẫn. Nếu
    bạn thích đi du lịch có thể tham khảo gợi ý dưới đây.
  </h5>

  <div class="card-container">
    @foreach($randomLocations as $randomLocation)
        <div class="card">
            <!-- Lấy đường dẫn ảnh chính hoặc ảnh mặc định -->
            @php
                $imagePath = $randomLocation->mainImage 
                             ? asset('storage/location_image/' . $randomLocation->mainImage->name) 
                             : asset('storage/default-image.jpg');
            @endphp
            
            <img class="card-img-top" src="{{ $imagePath }}" alt="Card image" />
            <div class="card-body">
                <h4 class="card-title">{{ $randomLocation->name }}</h4>
                <p class="card-text two-line-height">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" style="fill: rgba(101, 163, 13, 1); padding: 2px;">
                        <path d="M12 2C7.589 2 4 5.589 4 9.995 3.971 16.44 11.696 21.784 12 22c0 0 8.029-5.56 8-12 0-4.411-3.589-8-8-8zm0 12c-2.21 0-4-1.79-4-4s1.79-4 4-4 4 1.79 4 4-1.79 4-4 4z"></path>
                    </svg> {{ $randomLocation->address }}
                </p>
                <a href="{{ route('page.detail_location', ['id' => $randomLocation->id]) }}" class="btn">Xem chi tiết</a>
            </div>
        </div>
    @endforeach
  </div>
  
</div>
@endsection