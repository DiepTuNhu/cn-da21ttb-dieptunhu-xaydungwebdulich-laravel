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
                @if($type->status == 0)
                  <li>
                      <a class="dropdown-item" href="{{ route('page.location', ['type' => $type->id]) }}" data-type-id="{{ $type->id }}">
                          {{ $type->name }}
                      </a>
                  </li>
                @endif
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
                        @if($province->status == 0)
                          <div class="col-4 mb-2">
                              <a class="dropdown-item" href="{{ route('page.location', ['province' => $province->id]) }}" data-province-id="{{ $province->id }}">
                                  {{ $province->name }}
                              </a>
                          </div>
                          @endif
                      @endforeach
                  </div>
              </div>
          </ul>
      </li>
      
      
      <li class="nav-item">
        <a class="nav-link btn {{request() -> is('posts') ? 'active' : ''}}" href="{{ route('posts.index') }}">Bài viết</a>
      </li>
        
        <li class="nav-item">
          <a class="nav-link btn {{request() -> is('contact') ? 'active' : ''}}" href="{{ route('contact.index') }}">Liên hệ</a>
        </li>
      </ul>

      @if(Auth::check() || Session::has('userEmail'))
    <div class="dropdown">
        <a href="#" class="btn dropdown-toggle" id="userDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            <img src="{{ Auth::user()->image ? asset('storage/images/' . Auth::user()->image) : asset('images/default.jpg') }}" alt="Avatar" class="rounded-circle" width="40" height="40">
            <span class="ms-2">{{ Auth::user()->username }}</span>
        </a>
        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="userDropdown">
            <li><a class="dropdown-item" href="mailto:{{ Auth::user()->email }}">Email: {{ Auth::user()->email }}</a></li>
            <li><a class="dropdown-item" href="{{ route('user.posts-reviews') }}">Bài viết và đánh giá của bạn</a></li>
            <li><a class="dropdown-item" href="{{ route('profile.edit') }}">Đổi mật khẩu</a></li>
            <li>
                <form id="logout-form" action="{{ route('page.logout') }}" method="POST" style="display: none;">
                    @csrf
                </form>
                <a class="dropdown-item" href="#" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">Đăng xuất</a>
            </li>
        </ul>
    </div>
@else
    <div class="d-flex">
        <a href="{{ route('register') }}" class="btn">Đăng ký</a>
        <a href="{{ route('login') }}" class="btn">Đăng nhập</a>
    </div>
@endif

  


    </div>
  </div>
</nav>
