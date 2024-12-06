@extends('admin.index')
@section('title_name')
    Thêm điểm phục vụ
@endsection
@section('path')
    Thêm điểm phục vụ
@endsection

@section('content')
<section class="content">
    <div class="container-fluid">
      <div class="row">
        <!-- left column -->
        <div class="col-md-12">
          <!-- jquery validation -->
          <div class="card card-white">
            <div class="card-header">
              @include('admin.alert')
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form id="quickForm" action="{{route('service-point.store')}}" method = "post">
                @csrf
              <div class="card-body">
                <div class="form-group">
                  <label for="example">Tên quán</label>
                  <input type="text" name="name" class="form-control" id="name" placeholder="Nhập tên quán">
                </div>
                <div class=" form-group ">
                    <label for="exampleInputEmail1">Giới thiệu chung</label>      
                        <textarea class="ms-3" id="summernote" name="description">
                        </textarea>  
                </div>
                <div class="form-group">
                    <label for="example">Địa chỉ quán </label>
                    <input type="text" name="address" class="form-control" id="address" placeholder="Nhập tên danh mục">
                </div>
                <div class="form-group">
                    <label for="opening_time">Giờ mở cửa</label>
                    <input type="time" name="opening_time" class="form-control" id="opening_time">
                </div>
                <div class="form-group">
                    <label for="opening_time">Giờ đóng cửa</label>
                    <input type="time" name="close_time" class="form-control" id="opening_time">
                </div>
                
                <div class="form-group">
                    <label>Tên món ăn</label>
                    <select class="custom-select" name="food">
                      @foreach ($food as $f)
                        <option value="{{ $f->id }}">{{ $f->name }}</option>
                      @endforeach      
                    </select>
                </div>
                <div class="form-group">
                    <label>Chọn ảnh</label>
                    <input type="file" class="form-control" name="image">
                </div>
                <div class="form-group">
                    <label for="phone">Số điện thoại</label>
                    <input type="tel" name="phone" class="form-control" id="phone" placeholder="Nhập số điện thoại">
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


