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
            <form id="quickForm" action="{{ route('locations.store') }}" method="post">
              @csrf
              <div class="card-body">
                <div class="form-group">
                    <label for="">Tên địa điểm</label>
                    <input type="text" name="name" class="form-control" id="name" placeholder="Nhập tên địa điểm">
                </div>
                <div class="form-group">
                    <label for="address">Địa chỉ</label>
                    <input type="text" name="address" class="form-control" id="address" placeholder="Nhập địa chỉ">
                </div>
                <div class="form-group">
                    <label for="description">Mô tả</label>
                    <textarea name="description" id="description" class="form-control">{{ old('description') }}</textarea>
                </div>
        
                <div class="form-group">
                  <label for="type">Loại hình</label>
                  <select name="id_type" class="form-control" id="type">
                      <option value="">Chọn loại hình</option>
                      @foreach($types as $type)
                          <option value="{{ $type->id }}">{{ $type->name }}</option>
                      @endforeach
                  </select>
                </div>
                
                <div class="form-group">
                  <label for="province">Tỉnh/thành phố</label>
                  <select name="id_province" class="form-control" id="province">
                      <option value="">Chọn tỉnh/thành phố</option>
                      @foreach($provinces as $province)
                          <option value="{{ $province->id }}">{{ $province->name }}</option>
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


