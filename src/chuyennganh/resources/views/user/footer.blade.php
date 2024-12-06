<footer class="text-white pt-4">
  <div class="container-fluid">
    <div class="row">
      <!-- Cột Logo -->
      <div class="col-md-4 p-3" style="text-align: center">
        <img src="./images/logo.png" width="300px" alt="Logo" class="img-fluid" />
      </div>

      <!-- Cột Danh Sách Tên -->
      <div class="col-md-4">
        <h5>Danh Sách Tỉnh</h5>
        <ul class="list-unstyled" style="text-decoration: none">
          <li class="pt-3"><a href="#">Tên 1</a></li>
          <li class="pt-3"><a href="#">Tên 2</a></li>
          <li class="pt-3"><a href="#">Tên 3</a></li>
          <li class="pt-3"><a href="#">Tên 4</a></li>
        </ul>
      </div>

      <!-- Cột Thông Tin -->
      <div class="col-md-4">
        <h5>Thông Tin</h5>
        <p class="text-white">Địa chỉ: 123 Đường XYZ, Thành phố ABC</p>
        <p class="text-white">Số điện thoại: +123456789</p>
        <p class="text-white">Email: example@example.com</p>
      </div>
    </div>
    <div>
      <hr class="m-0" />
      <p class="m-0 d-flex align-items-center justify-content-center">copyright ©</p>
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