@extends('admin.index')
@section('title_name')
    Thêm người dùng 
@endsection
@section('path')
    Thêm người dùng
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
            <form id="quickForm" action="{{ route('users.store') }}" method = "post" enctype="multipart/form-data">
                @csrf
              <div class="card-body">
                <div class="form-group">
                    <label for="">Tên người dùng</label>
                    <input type="text" name="username" class="form-control" id="username" placeholder="Nhập tên người dùng">
                </div>
                <div class="form-group">
                  <label for="email">Email</label>
                  <input type="text" name="email" class="form-control" id="email" placeholder="Nhập email">
                </div>
                <div class="form-group">
                  <label for="address">Địa chỉ</label>
                  <input type="text" name="address" class="form-control" id="address" placeholder="Nhập địa chỉ">
                </div>
                <div class="form-group">
                  <label for="password">Mật khẩu</label>
                  <input type="password" name="password" class="form-control" id="password" placeholder="Nhập mật khẩu">
                </div>  
                <div class="form-group">
                  <label for="type">Phân quyền</label>
                  <select name="id_role" class="form-control" id="role">
                      <option value="">Chọn phân quyền</option>
                      @foreach($roles as $role)
                          <option value="{{ $role->id }}">{{ $role->role }}</option>
                      @endforeach
                  </select>
                </div>              
                <div class="form-group">
                  <label for="image" class="form-label">Hình ảnh</label>
                  <div class="custom-file">
                      <input type="file" class="custom-file-input" id="image" name="image" accept="image/*" required>
                      <label class="custom-file-label" for="image">Chọn tệp...</label>
                  </div>
                  <small class="form-text text-muted mt-2" id="file-name">
                      Chưa có tệp nào được chọn.
                  </small>
                </div>
              {{-- Hiển thị tên tệp được chọn --}}
              <script>
                  document.getElementById('image').addEventListener('change', function (e) {
                      const fileName = e.target.files[0]?.name || 'Chưa có tệp nào được chọn.';
                      document.querySelector('.custom-file-label').textContent = fileName;
                      document.getElementById('file-name').textContent = `Tệp được chọn: ${fileName}`;
                  });
              </script>
                                            
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

        </div>
        <!--/.col (right) -->
      </div>
      <!-- /.row -->
    </div><!-- /.container-fluid -->
  </section> 
@endsection


