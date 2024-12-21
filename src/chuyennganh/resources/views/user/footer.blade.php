<footer class="text-white pt-4">
  <div class="container-fluid">
    <div class="row">
      <!-- Cột Logo -->
      <div class="col-md-4 p-3" style="text-align: center">
        {{-- <img src="./images/logo.png" width="300px" alt="Logo" class="img-fluid" /> --}}
        <a class="navbar-brand" href="{{ route('page.index') }}" >
          <img src="images/logo.png" alt="" width="300px" />
        </a>
      </div>
      <!-- Cột Danh Sách Tên -->
      <div class="col-md-4">
        <h5>Danh Sách các loại hình du lịch</h5>
        <ul class="list-unstyled">
            @foreach($types as $type)
                <li class="pt-3">
                    <a href="{{ route('page.location', ['type' => $type->id]) }}" class="text-decoration-none">
                        {{ $type->name }}
                    </a>
                </li>
            @endforeach
        </ul>
    </div>

      <!-- Cột Thông Tin -->
      <div class="col-md-4">
        <h5>Thông Tin</h5>
        <p class="text-white">Địa chỉ: Hiếu Tử, Tiểu Cần, Trà Vinh</p>
        <p class="text-white">Số điện thoại: 0345154491</p>
        <p class="text-white">Email: nhudiep491@gmail.com</p>
      </div>
    </div>
    <div>
      <hr class="m-0" />
      {{-- <p class="m-0 d-flex align-items-center justify-content-center">copyright &copy;</p> --}}
      <p class="m-0 d-flex align-items-center justify-content-center">&copy; {{ date('Y') }} by Diep Tu nhu. All rights reserved.</p>

    </div>
  </div>
</footer>
</body>

<!-- Swiper JS -->
<script>
const swiper = new Swiper(".swiper", {
  slidesPerView: 3 /* Hiển thị 3 thẻ */,
  spaceBetween: 20 /* Khoảng cách giữa các thẻ */,
  centeredSlides: true /* Đặt thẻ chính giữa */,
  loop: true /* Lặp vô hạn */,
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },
  autoplay: {
    delay: 3000 /* Tự động chuyển sau 3 giây */,
    disableOnInteraction: false /* Không dừng khi tương tác */,
  },
});
</script>