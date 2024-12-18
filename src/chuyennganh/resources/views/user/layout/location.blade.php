@extends('user.master')
@section('content')
@include('user.layout.search')

<!-- CONTENT ---------------------------------------------------------------------------------------------------------------------- -->
<div class="container-fluid container-location row mt">
    <h2 class="text-content p-5 m-0">Những nơi tham quan đặc sắc</h2>

    <div class="container mb-4 col-sm-3 navcol mt-4">
        <ul id="province-list" class="nav nav-tabs vertical-nav" 
            style="white-space: nowrap; overflow-x: auto; -ms-overflow-style: none; scrollbar-width: none;">
            <!-- Các mục tỉnh sẽ được tải qua AJAX -->
        </ul>
    </div>
  
    <div class="card-container col-sm-9">
        <div class="container mt-4">
            <div class="row" id="location-list">
                <!-- Các địa điểm sẽ được tải qua AJAX -->
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function() {
        // Hàm tải các tỉnh và địa điểm
        function loadLocations(provinceId = null) {
            $.ajax({
                url: '{{ route('page.location') }}',
                type: 'GET',
                data: { province_id: provinceId },
                dataType: 'json',
                success: function(response) {
                    // Cập nhật danh sách tỉnh
                    let provinceList = $('#province-list');
                    provinceList.empty();
    
                    response.provinces.forEach(function(province) {
                        let activeClass = (province.id === provinceId) ? 'active' : '';
                        provinceList.append(`
                            <li class="nav-item">
                                <a class="nav-link ${activeClass}" href="#" data-province-id="${province.id}">
                                    ${province.name}
                                </a>
                            </li>
                        `);
                    });
    
                    // Cập nhật danh sách địa điểm
                    let locationList = $('#location-list');
                    locationList.empty();
                    response.locations.forEach(function(location) {
                        let imageUrl = location.mainImage ? '/storage/location_image/' + location.mainImage.name : '/images/default-image.jpg';
                        locationList.append(`
                            <div class="col-md-4 mb-4">
                                <div class="card">
                                    <img class="card-img-top" src="${imageUrl}" alt="Card image" />
                                    <div class="card-body">
                                        <h4 class="card-title">${location.name}</h4>
                                        <p class="card-text">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" style="fill: rgba(101, 163, 13, 1); padding: 2px;">
                                                <path d="M12 2C7.589 2 4 5.589 4 9.995 3.971 16.44 11.696 21.784 12 22c0 0 8.029-5.56 8-12 0-4.411-3.589-8-8-8zm0 12c-2.21 0-4-1.79-4-4s1.79-4 4-4 4 1.79 4 4-1.79 4-4 4z"></path>
                                            </svg>
                                            ${location.address}
                                        </p>
                                        <a href="/detail_location/${location.id}" class="btn btn-primary">Xem chi tiết</a>
                                    </div>
                                </div>
                            </div>
                        `);
                    });
                },
                error: function() {
                    alert('Lỗi khi tải dữ liệu.');
                }
            });
        }
    
        // Tải trạng thái activeProvince từ localStorage
        const storedProvinceId = localStorage.getItem('activeProvince');
    
        // Tải các tỉnh và địa điểm khi trang tải
        loadLocations(storedProvinceId ? parseInt(storedProvinceId) : null);
    
        // Khi một tỉnh được chọn
        $('#province-list').on('click', '.nav-link', function(e) {
            e.preventDefault();
            const provinceId = $(this).data('province-id');
    
            // Đánh dấu tỉnh được chọn là active
            $(this).addClass('active').siblings().removeClass('active');
    
            // Lưu tỉnh được chọn vào localStorage
            localStorage.setItem('activeProvince', provinceId);
    
            // Tải lại địa điểm cho tỉnh đã chọn
            loadLocations(provinceId);
        });
    });
    </script>
    
@endsection