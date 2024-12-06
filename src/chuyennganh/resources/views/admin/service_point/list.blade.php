@extends('admin.index')
@section('title_name')
    Điểm phục vụ
@endsection
@section('path')
    Điểm phục vụ
@endsection
@section('content')
<section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-12">
            <!-- /.card-header -->
            <div class="card-body">
              <table id="example1" class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Tên quán</th>
                    <th>Địa chỉ quán</th>
                    <th>Hình ảnh</th>
                    <th>Tên món ăn</th> 
                    <th>Giờ mở cửa</th>
                    <th>Giờ đóng cửa</th>                         
                    <th>Số điện thoại</th>
                    <th width="105px" class="text-center">Thao tác</th>
                </tr>
                </thead>
                <a href = "{{route('service-point.create')}}" class="btn btn-primary mb-3">Thêm mới</a><br>
                <tbody>
                    @foreach ($service_point as $sp)
                    <tr>   
                        <td>{{$sp->id}}</td>
                        <td>{{$sp->name}}</td>
                        <td>{{$sp->address}}</td>
                        <td><img src="admin/images/{{$sp->image}}" width="100px" height="100px"></td>
                        <td>{{$sp->Food->name}}</td>
                        <td>{{$sp->open_time}}</td>
                        <td>{{$sp->close_time}}</td>                                           
                        <td>{{$sp->phone}}</td>
                        <td>
                          <a class = "btn btn-primary" href = "{{route('service-point.edit',['id'=>$sp->id])}}">Sửa</a>
                          <a onclick = "return confirm('Bạn có thật sự muốn xóa không?')" class = "btn btn-danger" href = "{{route('service-point.destroy',['id'=>$sp->id])}}">Xóa</a>
                      </td>
                    </tr>
                  @endforeach
                </tbody>
                <tfoot>
                  <tr>
                    <th>Id</th>
                    <th>Tên quán</th>
                    <th>Địa chỉ quán</th>
                    <th>Hình ảnh</th>
                    <th>Tên món ăn</th> 
                    <th>Giờ mở cửa</th>
                    <th>Giờ đóng cửa</th>                         
                    <th>Số điện thoại</th>
                    <th width="105px" class="text-center">Thao tác</th>
                </tr>
                </tfoot>
              </table>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </div>
    <!-- /.container-fluid -->
  </section>
@endsection



