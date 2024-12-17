<nav class="navbar navbar-expand-sm fixed-top">
  <div class="container-fluid">
    <a class="navbar-brand" href="/" style="padding: 0 20px 0 50px">
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
          <a class="nav-link btn {{request() -> is('/') ? 'active' : ''}}" href="{{ route('page.index') }}">Trang chủ</a>
        </li>
        <li class="nav-item">
          <a class="nav-link btn {{request() -> is('location') ? 'active' : ''}}" href="{{ route('page.location') }}">Địa điểm</a>
        </li>
        {{-- <li class="nav-item">
          <a class="nav-link {{request() -> is('about') ? 'active' : ''}}" href="about">Link 2</a>
        </li> --}}
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



