<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <!-- swiper -->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

    <link rel="stylesheet" href="css/style.css" />
    <title>Document</title>
  </head>
<body>

@include('header')
@yield('content')
@include('footer')

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
</html>