@extends('user.master')
@section('content')
@include('user.layout.search')

<!-- CONTENT ---------------------------------------------------------------------------------------------------------------------- -->
<div class="container-location row mt">
    <h2 class="text-content p-5 m-0">Những nơi tham quan đặc sắc <span id="selected-type"></span></h2>
    <div class="card-container col-sm-12">
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
        // Hàm tải các địa điểm khi chọn tỉnh hoặc loại hình
        function loadLocations(provinceId = null, typeId = null) {
            $.ajax({
                url: '{{ route('page.location') }}',
                type: 'GET',
                data: { province: provinceId, type: typeId },
                dataType: 'json',
                success: function(response) {
                    // Cập nhật danh sách địa điểm
                    let locationList = $('#location-list');
                    locationList.empty();
                    if (response.locations.length === 0) {
                        locationList.append('<p>Không tìm thấy địa điểm nào phù hợp.</p>');
                    } else {
                        response.locations.forEach(function(location) {
                            let imageUrl = location.mainImage ? '/storage/location_image/' + location.mainImage.name : '/images/default-image.jpg';
                            locationList.append(`
                                <div class="col-md-3 mb-4">
                                    <div class="card card-custom">
                                        <img class="card-img-top" src="${imageUrl}" alt="${location.name}" />
                                        <div class="card-body">
                                            <h4  class="card-title">${location.name}</h4>
                                            <p class="card-text two-line-height">${location.address}</p>
                                            <a href="/detail_location/${location.id}" class="btn btn-primary">Xem chi tiết</a>
                                        </div>
                                    </div>
                                </div>
                            `);
                        });
                    }
                    // Cuộn xuống vị trí của các thẻ hiển thị địa điểm
                    $('html, body').animate({
                        scrollTop: $('#location-list').offset().top
                    }, 500);
                },
                error: function() {
                    alert('Lỗi khi tải dữ liệu.');
                }
            });
        }

        // Hàm lấy tham số từ URL
        function getParameterByName(name) {
            const url = window.location.href;
            name = name.replace(/[\[\]]/g, '\\$&');
            const regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)');
            const results = regex.exec(url);
            if (!results) return null;
            if (!results[2]) return '';
            return decodeURIComponent(results[2].replace(/\+/g, ' '));
        }

        // Lấy giá trị type và province từ URL
        const typeId = getParameterByName('type');
        const provinceId = getParameterByName('province');

        // Tải các địa điểm khi trang tải
        loadLocations(provinceId, typeId);

        // Khi một tỉnh được chọn từ dropdown
        $('ul.dropdown-menu .dropdown-item[data-province-id]').on('click', function(e) {
            e.preventDefault();
            const provinceId = $(this).data('province-id');
            const provinceName = $(this).text();
            
            // Đánh dấu tỉnh được chọn là active và tắt trạng thái active của các mục khác
            $('ul.dropdown-menu .dropdown-item[data-province-id]').removeClass('active');
            $(this).addClass('active');

            // Lưu tỉnh được chọn vào localStorage
            localStorage.setItem('activeProvince', provinceId);
            
            // Thay đổi URL mà không tải lại trang
            const newUrl = new URL(window.location.href);
            newUrl.searchParams.set('province', provinceId);
            newUrl.searchParams.delete('type');
            history.pushState(null, '', newUrl.toString());

            // Thay đổi tiêu đề
            $('#selected-type').text(` - ${provinceName}`);

            // Tải lại địa điểm cho tỉnh đã chọn
            loadLocations(provinceId, null);
        });

        // Khi một loại hình được chọn từ dropdown
        $('ul.dropdown-menu .dropdown-item[data-type-id]').on('click', function(e) {
            e.preventDefault();
            const typeId = $(this).data('type-id');
            const typeName = $(this).text();
            
            // Đánh dấu loại hình được chọn là active và tắt trạng thái active của các mục khác
            $('ul.dropdown-menu .dropdown-item[data-type-id]').removeClass('active');
            $(this).addClass('active');

            // Thay đổi URL mà không tải lại trang
            const newUrl = new URL(window.location.href);
            newUrl.searchParams.set('type', typeId);
            newUrl.searchParams.delete('province');
            history.pushState(null, '', newUrl.toString());

            // Thay đổi tiêu đề
            $('#selected-type').text(` - ${typeName}`);

            // Tải lại địa điểm cho loại hình đã chọn
            loadLocations(null, typeId);
        });
    });
</script>

@endsection
