@extends('admin.index')
@section('title_name')
    Thêm nguyên liệu 
@endsection
@section('path')
    Thêm nguyên liệu
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
            <form id="quickForm" action="" method = "post">
                @csrf
              <div class="card-body">
                <div class="form-group">
                    <label for="">Tên</label>
                    <input type="text" name="name" class="form-control" id="name" placeholder="Nhập tên ">
                </div>
                <div class="form-group">
                  <label for="password">Mật khẩu</label>
                  <input type="text" name="password" class="form-control" id="password" placeholder="Nhập mật khẩu">
                </div>
                <div class="form-group">
                  <label for="email">Email</label>
                  <input type="text" name="email" class="form-control" id="email" placeholder="Nhập email">
                </div>
                <div class="form-group">
                  <label for="address">Địa chỉ</label>
                  <input type="text" name="address" class="form-control" id="address" placeholder="Nhập địa chỉ">
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

        </div>
        <!--/.col (right) -->
      </div>
      <!-- /.row -->
    </div><!-- /.container-fluid -->
  </section> 
@endsection


