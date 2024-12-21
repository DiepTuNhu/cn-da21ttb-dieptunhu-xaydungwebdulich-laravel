<nav class="navbar navbar-expand-sm fixed-top">
  <div class="container-fluid">
    <a class="navbar-brand" href="{{ route('page.index') }}" style="padding: 0 20px 0 50px">
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
          {{-- <a class="nav-link btn {{request() -> is('/') ? 'active' : ''}}" href="{{ route('page.index') }}">Trang chủ</a> --}}
        </li>
        {{-- <li class="nav-item">
          <a class="nav-link btn {{request() -> is('location') ? 'active' : ''}}" href="{{ route('page.location') }}">Loại hình du lịch</a>
        </li> --}}
        <li class="nav-item dropdown">
          <a class="nav-link btn dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Loại hình du lịch
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
              @foreach($types as $type)
                  <li>
                    <a class="dropdown-item" href="{{ route('page.location', ['type' => $type->id]) }}" data-type-id="{{ $type->id }}">
                      {{ $type->name }}
                  </a>
                  </li>
              @endforeach
          </ul>
      </li>

      <li class="nav-item dropdown">
          <a class="nav-link btn dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              Địa phương
          </a>
          <ul class="dropdown-menu p-3" aria-labelledby="navbarDropdown" style="width: 600px;">
              <div class="container">
                  <div class="row">
                      @foreach($provinces as $province)
                          <div class="col-4 mb-2">
                              <a class="dropdown-item" href="{{ route('page.location', ['province' => $province->id]) }}" data-province-id="{{ $province->id }}">
                                  {{ $province->name }}
                              </a>
                          </div>
                      @endforeach
                  </div>
              </div>
          </ul>
      </li>
      
      
      
        
        {{-- <li class="nav-item">
          <a class="nav-link btn {{request() -> is('gastronomy') ? 'active' : ''}}" href="{{ route('page.gastronomy') }}">Ẩm thực</a>
        </li>
        <li class="nav-item">
          <a class="nav-link btn" href="javascript:void(0)">Lưu trú</a>
        </li> --}}
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
