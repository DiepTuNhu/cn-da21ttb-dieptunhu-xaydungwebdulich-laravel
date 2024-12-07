@extends('admin.index')
@section('title_name')
    Thêm địa điểm 
@endsection
@section('path')
    Thêm địa điểm
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
              <h3 class="card-title"></h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form id="quickForm" action="{{ route('photos.store') }}" method="post" enctype="multipart/form-data">
              @csrf
              <div class="card-body">
                <!-- Khung 1: Chọn 1 ảnh, status = 2 -->
                <div class="form-group">
                  <label for="image1" class="form-label">Chọn ảnh (Ảnh chính)</label>
                  <div class="custom-file">
                      <input type="file" class="custom-file-input" id="image1" name="image1" accept="image/*" onchange="previewImage(1)" required>
                      <label class="custom-file-label" for="image1">Chọn tệp...</label>
                  </div>
                </div>

                <!-- Khung 2: Chọn tối đa 4 ảnh, status = 0 -->
                <div class="form-group">
                  <label for="image2" class="form-label">Chọn tối đa 4 ảnh (Ảnh phụ)</label>
                  <div class="custom-file">
                      <input type="file" class="custom-file-input" id="image2" name="images[]" accept="image/*" multiple onchange="previewImages(2)">
                      <label class="custom-file-label" for="image2">Chọn tệp...</label>
                  </div>
                </div>

                <!-- Hiển thị ảnh xem trước -->
                <div class="form-group">
                  <label for="imagePreview1">Ảnh xem trước (Ảnh chính):</label>
                  <div id="imagePreview1" style="margin-top: 10px;"></div>
                </div>

                <div class="form-group">
                  <label for="imagePreview2">Ảnh xem trước (Ảnh phụ):</label>
                  <div id="imagePreview2" style="margin-top: 10px;"></div>
                </div>
                <div class="form-group">
                    <label for="caption">Caption</label>
                    <input type="text" name="caption" class="form-control" id="caption" placeholder="Nhập địa chỉ">
                </div>
                <div class="form-group">
                    <label for="url">URL</label>
                    <input type="text" name="url" class="form-control" id="url" placeholder="Nhập địa chỉ">
                </div>     
              

{{-- <!-- Dropdown Tỉnh -->
<div class="form-group">
  <label for="province">Chọn Tỉnh</label>
  <select id="province" name="province" class="form-control" onchange="fetchLocations()">
      <option value="">Chọn tỉnh</option>
      @foreach($provinces as $province)
          <option value="{{ $province->id }}">{{ $province->name }}</option>
      @endforeach
  </select>
</div>

<!-- Dropdown Địa Điểm -->
<div class="form-group">
  <label for="location">Chọn Địa Điểm</label>
  <select id="location" name="id_location" class="form-control">
      <option value="">Chọn địa điểm</option>
      @foreach($locations as $location)
          <option value="{{ $location->id }}">{{ $location->name }}</option>
      @endforeach
  </select>
</div> --}}



                <div class="form-group">
                  <label for="location">Địa điểm</label>
                  <select name="id_location" class="form-control" id="location">
                      <option value="">Chọn tỉnh/thành phố</option>
                      @foreach($locations as $location)
                          <option value="{{ $location->id }}">{{ $location->name }}</option>
                      @endforeach
                  </select>
                </div>                 
              </div>
              <!-- /.card-body -->
              <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Thêm</button>
              </div>
          </form>
          
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


