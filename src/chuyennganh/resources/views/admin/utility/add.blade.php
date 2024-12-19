@extends('admin.index')
@section('title_name')
    Thêm tiện ích 
@endsection
@section('path')
    Thêm tiện ích
@endsection

@section('content')
<section class="content">
    <div class="container-fluid">
      <div class="row">
        <!-- left column -->
        <div class="col-md-12">
          <!-- jquery validation -->
          <div class="card card-primary">
            <div class="card-header">
              @include('admin.alert')
           </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form id="quickForm" action="{{ route('utilities.store') }}" method="post" enctype="multipart/form-data">
              @csrf
              <div class="card-body">
                <div class="form-group">
                    <label for="typeofutility">Loại tiện ích</label>
                    <select name="id_typeofutility" class="form-control" id="typeofutility" required>
                        <option value="">Chọn loại tiện ích</option>
                        @foreach($typeofutilities as $typeofutility)
                            <option value="{{ $typeofutility->id }}">{{ $typeofutility->name }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label for="location">Địa điểm</label>
                    <select name="id_location" class="form-control" id="location" required>
                        <option value="">Chọn địa điểm</option>
                        @foreach($locations as $location)
                            <option value="{{ $location->id }}">{{ $location->name }}</option>
                        @endforeach
                    </select>
                </div>
                  <div class="form-group">
                      <label for="name">Tên tiện ích</label>
                      <input type="text" name="name" class="form-control" id="name" placeholder="Nhập tên tiện ích" required>
                  </div>
                  <div class="form-group">
                      <label for="price">Giá</label>
                      <input type="text" name="price" class="form-control" id="price" placeholder="Nhập giá" min="0">
                  </div>
                  <div class="form-group">
                      <label for="address">Địa chỉ</label>
                      <input type="text" name="address" class="form-control" id="address" placeholder="Nhập địa chỉ" required>
                  </div>
                  <div class="form-group">
                      <label for="phone">Số điện thoại</label>
                      <input type="tel" name="phone" class="form-control" id="phone" placeholder="Nhập số điện thoại" pattern="^(\+84|0)[1-9][0-9]{8}$" title="Vui lòng nhập số điện thoại hợp lệ" required>
                  </div>
                  {{-- <div class="form-group">
                      <label for="openingtime">Giờ mở cửa</label>
                      <input type="time" name="openingtime" class="form-control" id="openingtime">
                  </div>
                  <div class="form-group">
                      <label for="closingtime">Giờ đóng cửa</label>
                      <input type="time" name="closingtime" class="form-control" id="closingtime">
                  </div> --}}
                  <div class="form-group">
                    <label for="time">Giờ phục vụ</label>
                    <input type="text" name="time" class="form-control" id="time">
                </div>
                  <div class="form-group">
                      <label for="rank">Xếp hạng</label>
                      <input type="number" name="rank" class="form-control" id="rank" placeholder="Nhập xếp hạng" min="1" max="5" step="0.1" required>
                  </div>
                  <div class="form-group">
                      <label for="distance">Khoảng cách (km)</label>
                      <input type="number" name="distance" class="form-control" id="distance" placeholder="Nhập khoảng cách" min="0" step="0.1">
                  </div>
                  <div class="form-group">
                      <label for="description">Mô tả</label>
                      <textarea name="description" id="description" class="form-control" placeholder="Nhập mô tả">{{ old('description') }}</textarea>
                  </div>
                  <div class="form-group">
                      <label for="image">Hình ảnh</label>
                      <div class="custom-file">
                          <input type="file" class="custom-file-input" id="image" name="image" accept="image/*">
                          <label class="custom-file-label" for="image">Chọn tệp...</label>
                      </div>
                      <small class="form-text text-muted mt-2" id="file-name">Chưa có tệp nào được chọn.</small>
                  </div>

              </div>
              <!-- /.card-body -->
              <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Thêm</button>
              </div>
          </form>
          
          <script>
              document.getElementById('image').addEventListener('change', function (e) {
                  const fileName = e.target.files[0]?.name || 'Chưa có tệp nào được chọn.';
                  document.querySelector('.custom-file-label').textContent = fileName;
                  document.getElementById('file-name').textContent = `Tệp được chọn: ${fileName}`;
              });
          </script>
          
          
          </div>
          <!-- /.card -->
          </div>
        <!--/.col (left) -->
        <!-- right column -->
        <div class="col-md-6">

          {{-- <script src="{{ asset('ckeditor/ckeditor.js') }}"></script>
          <script>
              CKEDITOR.replace('description', {
                  // Các tùy chọn bạn muốn thêm, ví dụ:
                  filebrowserUploadUrl: "{{ route('ckeditor.upload', ['_token' => csrf_token() ]) }}",
                  filebrowserUploadMethod: 'form'
              });
          </script> --}}
          

        </div>
        <!--/.col (right) -->
      </div>
      <!-- /.row -->
    </div><!-- /.container-fluid -->
  </section> 
@endsection


