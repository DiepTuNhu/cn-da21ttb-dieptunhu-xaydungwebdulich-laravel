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

      {{-- <div class="d-flex">
        <a href="{{route('register')}}" class="btn">Đăng ký</a>
        <a href="{{route('login')}}" class="btn">Đăng nhập</a>
      </div> --}}

      @if(Auth::check() || Session::has('userEmail'))
      <form id="logout-form" action="{{ route('page.logout') }}" method="POST" style="display: none;">
          @csrf
      </form>
      <a href="#" class="btn" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
          Đăng xuất
      </a>
      @else
      <div class="d-flex">
        <a href="{{route('register')}}" class="btn">Đăng ký</a>
        <a href="{{route('login')}}" class="btn">Đăng nhập</a>
        {{-- <a href="{{route('google.login')}}" class="btn">Google</a> --}}
      </div>
      @endif
    </div>
  </div>
</nav>

<!-- Carousel -->
<div id="demo" class="carousel slide" data-bs-ride="carousel">
  <!-- Indicators/dots -->
  <div class="carousel-indicators">
    @foreach($slides as $key => $slide)
      <button 
        type="button" 
        data-bs-target="#demo" 
        data-bs-slide-to="{{ $key }}" 
        class="{{ $key === 0 ? 'active' : '' }}">
      </button>
    @endforeach
  </div>

  <!-- The slideshow/carousel -->
  <div class="carousel-inner">
    @foreach($slides as $key => $slide)
      <div class="carousel-item {{ $key === 0 ? 'active' : '' }}">
        <!-- Hiển thị hình ảnh -->
        <img src="{{ asset('storage/slide_image/' . $slide->image) }}" alt="{{ $slide->title }}" class="d-block w-100">
        {{-- <img src="{{ asset('public/slide_image/' . $slide->image) }}" alt="Slide {{ $key + 1 }}" class="d-block" style="width: 100%"> --}}
      </div>
    @endforeach
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
