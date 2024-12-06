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
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title"></h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form id="quickForm" action="{{route('service-point.update',['id'=>$service_point->id])}}" method = "post">
                @csrf
              <div class="card-body">
                <div class="form-group">
                    <label for="example">Id</label>
                    <input type="text" name="id" class="form-control" value="{{ $service_point->id }}" id="id" readonly >
                  </div>
                <div class="form-group">
                  <label for="example">Tên quán</label>
                  <input type="text" name="name" class="form-control" value="{{ $service_point->name }}" id="name" >
                </div>
                <div class=" form-group ">
                    <label for="exampleInputEmail1">Giới thiệu chung</label>      
                        <textarea class="ms-3" name="description"  id="summernote">
                            {{ $service_point->description}}
                        </textarea>  
                </div>
                <div class="form-group">
                    <label for="example">Địa chỉ quán </label>
                    <input type="text" name="address" value="{{ $service_point->address}}" class="form-control" id="address">
                </div>
                <div class="form-group">
                    <label for="opening_time">Giờ mở cửa</label>
                    <input type="time" name="opening_time" value="{{ $service_point->open_time}}" class="form-control" id="opening_time">
                </div>
                <div class="form-group">
                    <label for="opening_time">Giờ đóng cửa</label>
                    <input type="time" name="close_time" value="{{ $service_point->close_time}}" class="form-control" id="opening_time">
                </div>
                
                <div class="form-group">
                    <label>Tên món ăn</label>
                    <select class="custom-select" name="food">
                      @foreach ($food as $f)
                        <option value="{{ $f->id }}"@if ($f->id == $service_point->id_food) selected @endif>{{ $f->name }}</option>
                      @endforeach      
                    </select>
                </div>
                <div class="form-group">
                    <label>Chọn ảnh</label>
                    <input type="file" class="form-control" name="image">
                    <img src="admin/images/{{$service_point->image}}" width="100px" height="100px">
                </div>
                <div class="form-group">
                    <label for="phone">Số điện thoại</label>
                    <input type="tel" name="phone" value="{{ $service_point->phone}}" class="form-control" id="phone" placeholder="Nhập số điện thoại">
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


