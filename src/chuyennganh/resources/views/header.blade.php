<nav class="navbar navbar-expand-sm fixed-top">
  <div class="container-fluid">
    <a class="navbar-brand" href="" style="padding: 0 20px 0 50px">
      <img src="images/logo.png" alt="" width="100px" />
    </a>
    <button
      class="navbar-toggler"
      type="button"
      data-bs-toggle="collapse"
      data-bs-target="#mynavbar"
    >
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="mynavbar">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
          <a class="nav-link btn" href="javascript:void(0)">Trang chủ</a>
        </li>
        <li class="nav-item">
          <a class="nav-link btn" href="javascript:void(0)">Địa điểm</a>
        </li>
        <li class="nav-item">
          <a class="nav-link btn" href="javascript:void(0)">Ẩm thực</a>
        </li>
        <li class="nav-item">
          <a class="nav-link btn" href="javascript:void(0)">Lưu trú</a>
        </li>
      </ul>

      <div class="d-flex">
        <button class="btn" type="button">Đăng ký</button>
        <button class="btn" type="button">Đăng nhập</button>
      </div>
    </div>
  </div>
</nav>

<!-- Carousel -->
<div id="demo" class="carousel slide" data-bs-ride="carousel">
  <!-- Indicators/dots -->
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
    <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
    <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
  </div>

  <!-- The slideshow/carousel -->
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="./images/anggiang.jpg" alt="Los Angeles" class="d-block" style="width: 100%" />
    </div>
    <div class="carousel-item">
      <img src="./images/kiengiang.jpg" alt="Chicago" class="d-block" style="width: 100%" />
    </div>
    <div class="carousel-item">
      <img src="./images/travinh.jpg" alt="New York" class="d-block" style="width: 100%" />
    </div>
  </div>

  <!-- Left and right controls/icons -->
  <button
    class="carousel-control-prev"
    type="button"
    data-bs-target="#demo"
    data-bs-slide="prev"
  >
    <span class="carousel-control-prev-icon"></span>
  </button>
  <button
    class="carousel-control-next"
    type="button"
    data-bs-target="#demo"
    data-bs-slide="next"
  >
    <span class="carousel-control-next-icon"></span>
  </button>

  <!-- Search bar chồng lên carousel -->
  <div class="search-bar position-absolute">
    <form>
      <input type="text" class="form-control" placeholder="Tìm kiếm..." />
      <button type="submit" class="btn search">Tìm</button>
    </form>
  </div>
</div>