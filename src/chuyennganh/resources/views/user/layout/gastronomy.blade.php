@extends('user.master')
@section('content')
@include('user.layout.search')

<div class="container-fluid container-location row">
  <h2 class="text-content p-5 m-0">Những nơi tham quan đặc sắc</h2>

    <div class="container mb-4 col-sm-3">
    <ul class="nav nav-tabs vertical-nav" 
        style="white-space: nowrap; overflow-x: auto; -ms-overflow-style: none; scrollbar-width: none;">
        <!-- Các mục -->
        <li class="nav-item">
            <a class="nav-link active" href="#">Trà Vinh</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Cần Thơ</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">An Giang</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Long An</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Tiền Giang</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Đồng Tháp</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Vĩnh Long</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Hậu Giang</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Sóc Trăng</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Bến Tre</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Kiên Giang</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Bạc Liêu</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">Cà Mau</a>
        </li>

    </ul>
</div>

  <div class="card-container col-sm-9">
    <div class="card">
      <img class="card-img-top" src="images/travinh.jpg" alt="Card image" />
      <div class="card-body">
        <h4 class="card-title">John Doe biết chưa biết ôn rõ chưa</h4>
        <p class="card-text">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="24"
            height="24"
            viewBox="0 0 24 24"
            style="fill: rgba(101, 163, 13, 1); padding: 2px;"
          >
            <path
              d="M12 2C7.589 2 4 5.589 4 9.995 3.971 16.44 11.696 21.784 12 22c0 0 8.029-5.56 8-12 0-4.411-3.589-8-8-8zm0 12c-2.21 0-4-1.79-4-4s1.79-4 4-4 4 1.79 4 4-1.79 4-4 4z"
            ></path>
            </svg>Ấp Ô Đùng, xã Hiếu Tử, huyện Tiểu Cần, tỉnh Trà Vinh
        </p>
        <a href="#" class="btn">See Profile</a>
      </div>
    </div>
    
    <div class="card">
      <img class="card-img-top" src="images/Muicamau.png" alt="Card image" />
      <div class="card-body">
        <h4 class="card-title">John Doe</h4>
        <p class="card-text">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="24"
            height="24"
            viewBox="0 0 24 24"
            style="fill: rgba(101, 163, 13, 1); padding: 2px;"
          >
            <path
              d="M12 2C7.589 2 4 5.589 4 9.995 3.971 16.44 11.696 21.784 12 22c0 0 8.029-5.56 8-12 0-4.411-3.589-8-8-8zm0 12c-2.21 0-4-1.79-4-4s1.79-4 4-4 4 1.79 4 4-1.79 4-4 4z"
            ></path>
            </svg>Ấp Ô Đùng, xã Hiếu Tử, huyện Tiểu Cần, tỉnh Trà Vinh
        </p>
        <a href="#" class="btn">See Profile</a>
      </div>
    </div>
    <div class="card">
      <img class="card-img-top" src="images/Muicamau.png" alt="Card image" />
      <div class="card-body">
        <h4 class="card-title">John Doe</h4>
        <p class="card-text">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="24"
            height="24"
            viewBox="0 0 24 24"
            style="fill: rgba(101, 163, 13, 1); padding: 2px;"
          >
            <path
              d="M12 2C7.589 2 4 5.589 4 9.995 3.971 16.44 11.696 21.784 12 22c0 0 8.029-5.56 8-12 0-4.411-3.589-8-8-8zm0 12c-2.21 0-4-1.79-4-4s1.79-4 4-4 4 1.79 4 4-1.79 4-4 4z"
            ></path>
            </svg>Ấp Ô Đùng, xã Hiếu Tử, huyện Tiểu Cần, tỉnh Trà Vinh
        </p>
        <a href="#" class="btn">See Profile</a>
      </div>
    </div>
    <div class="card">
      <img class="card-img-top" src="images/Muicamau.png" alt="Card image" />
      <div class="card-body">
        <h4 class="card-title">John Doe</h4>
        <p class="card-text">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="24"
            height="24"
            viewBox="0 0 24 24"
            style="fill: rgba(101, 163, 13, 1); padding: 2px;"
          >
            <path
              d="M12 2C7.589 2 4 5.589 4 9.995 3.971 16.44 11.696 21.784 12 22c0 0 8.029-5.56 8-12 0-4.411-3.589-8-8-8zm0 12c-2.21 0-4-1.79-4-4s1.79-4 4-4 4 1.79 4 4-1.79 4-4 4z"
            ></path>
            </svg>Ấp Ô Đùng, xã Hiếu Tử, huyện Tiểu Cần, tỉnh Trà Vinh
        </p>
        <a href="#" class="btn">See Profile</a>
      </div>
    </div>
    <div class="card">
      <img class="card-img-top" src="images/Muicamau.png" alt="Card image" />
      <div class="card-body">
        <h4 class="card-title">John Doe</h4>
        <p class="card-text">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="24"
            height="24"
            viewBox="0 0 24 24"
            style="fill: rgba(101, 163, 13, 1); padding: 2px;"
          >
            <path
              d="M12 2C7.589 2 4 5.589 4 9.995 3.971 16.44 11.696 21.784 12 22c0 0 8.029-5.56 8-12 0-4.411-3.589-8-8-8zm0 12c-2.21 0-4-1.79-4-4s1.79-4 4-4 4 1.79 4 4-1.79 4-4 4z"
            ></path>
            </svg>Ấp Ô Đùng, xã Hiếu Tử, huyện Tiểu Cần, tỉnh Trà Vinh
        </p>
        <a href="#" class="btn">See Profile</a>
      </div>
    </div>
    <div class="card">
      <img class="card-img-top" src="images/Muicamau.png" alt="Card image" />
      <div class="card-body">
        <h4 class="card-title">John Doe</h4>
        <p class="card-text">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="24"
            height="24"
            viewBox="0 0 24 24"
            style="fill: rgba(101, 163, 13, 1); padding: 2px;"
          >
            <path
              d="M12 2C7.589 2 4 5.589 4 9.995 3.971 16.44 11.696 21.784 12 22c0 0 8.029-5.56 8-12 0-4.411-3.589-8-8-8zm0 12c-2.21 0-4-1.79-4-4s1.79-4 4-4 4 1.79 4 4-1.79 4-4 4z"
            ></path>
            </svg>Ấp Ô Đùng, xã Hiếu Tử, huyện Tiểu Cần, tỉnh Trà Vinh
        </p>
        <a href="#" class="btn">See Profile</a>
      </div>
    </div>
    <div class="card">
      <img class="card-img-top" src="images/Muicamau.png" alt="Card image" />
      <div class="card-body">
        <h4 class="card-title">John Doe</h4>
        <p class="card-text">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="24"
            height="24"
            viewBox="0 0 24 24"
            style="fill: rgba(101, 163, 13, 1); padding: 2px;"
          >
            <path
              d="M12 2C7.589 2 4 5.589 4 9.995 3.971 16.44 11.696 21.784 12 22c0 0 8.029-5.56 8-12 0-4.411-3.589-8-8-8zm0 12c-2.21 0-4-1.79-4-4s1.79-4 4-4 4 1.79 4 4-1.79 4-4 4z"
            ></path>
            </svg>Ấp Ô Đùng, xã Hiếu Tử, huyện Tiểu Cần, tỉnh Trà Vinh
        </p>
        <a href="#" class="btn">See Profile</a>
      </div>
    </div>
    <div class="card">
      <img class="card-img-top" src="images/Muicamau.png" alt="Card image" />
      <div class="card-body">
        <h4 class="card-title">John Doe</h4>
        <p class="card-text">
          <svg
            xmlns="http://www.w3.org/2000/svg"
            width="24"
            height="24"
            viewBox="0 0 24 24"
            style="fill: rgba(101, 163, 13, 1); padding: 2px;"
          >
            <path
              d="M12 2C7.589 2 4 5.589 4 9.995 3.971 16.44 11.696 21.784 12 22c0 0 8.029-5.56 8-12 0-4.411-3.589-8-8-8zm0 12c-2.21 0-4-1.79-4-4s1.79-4 4-4 4 1.79 4 4-1.79 4-4 4z"
            ></path>
            </svg>Ấp Ô Đùng, xã Hiếu Tử, huyện Tiểu Cần, tỉnh Trà Vinh
        </p>
        <a href="#" class="btn">See Profile</a>
      </div>
    </div>

  </div>
</div>