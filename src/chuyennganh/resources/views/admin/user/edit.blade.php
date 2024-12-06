@extends('admin.index')
@section('title_name')
    Sửa người dùng
@endsection
@section('path')
    Sửa người dùng
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
            <form id="quickForm" action="{{route('users.update',['id'=>$user->id])}}" method="post" enctype="multipart/form-data">
                @csrf
              <div class="card-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Id</label>
                  <input type="text" name="userName" class="form-control" value="{{$user->id}}"id="userName" readonly>
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Tên người dùng</label>
                  <input type="text" name="userName" class="form-control" value="{{$user->username}}"id="userName">
                </div>
                <div class="form-group">
                  <label for="email">Email</label>
                  <input type="text" name="email" class="form-control" value="{{$user->email}}"id="email">
                </div>
                <div class="form-group">
                  <label for="address">Địa chỉ</label>
                  <input type="text" name="address" class="form-control" value="{{$user->address}}"" id="address">
                </div>
                <div class="form-group">
                  <label for="password">Mật khẩu</label>
                  <input type="password" name="password" class="form-control" value="{{$user->password}}id="password">
                </div> 
                <div class="form-group">
                  <label for="status">Trạng thái</label>
                  <select name="status" class="form-control" id="status">
                      <option value="0" {{ $user->status == 0 ? 'selected' : '' }}>Visible</option>
                      <option value="1" {{ $user->status == 1 ? 'selected' : '' }}>Hidden</option>
                  </select>
                </div>
                
                <div class="form-group">
                  <label for="image" class="form-label">Hình ảnh</label>
                  <div class="custom-file">
                      <input type="file" class="custom-file-input" id="image" name="image" accept="image/*">
                      <label class="custom-file-label" for="image">Chọn tệp...</label>
                  </div>
                  @if($user->image) <!-- Hiển thị ảnh cũ nếu có -->
                      <div class="mt-2">
                          <img src="{{ asset('storage/images/' . $user->image) }}" alt="Current Image" width="100">
                      </div>
                  @endif
                  <small class="form-text text-muted mt-2" id="file-name">Chưa có tệp nào được chọn.</small>
                </div>
              </div>
              <!-- /.card-body -->
              <div class="card-footer">
                <button type="submit" class="btn btn-primary">Sửa</button>
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

