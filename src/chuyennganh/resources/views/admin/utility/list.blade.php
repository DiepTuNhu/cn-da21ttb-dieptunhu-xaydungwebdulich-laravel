@extends('admin.index')
@section('title_name')
    Tiện ích
@endsection
@section('path')
    Tiện ích
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
                    <th>ID</th>
                    <th>Tên tiện ích</th>
                    {{-- <th>Giá</th> --}}
                    <th>Địa chỉ</th>
                    <th>Số điện thoại</th>
                    {{-- <th>Giờ mở cửa</th>
                    <th>Giờ đóng cửa</th>
                    <th>Xếp hạng</th>
                    <th>Khoảng cách</th>
                    <th>Mô tả</th> --}}
                    <th>Hình ảnh</th>
                    <th>Loại tiện ích</th>
                    <th>Địa điểm</th>
                    <th>Trạng thái</th>
                    <th width="105px">Thao tác</th>
                </tr>
                </thead>
                <a href = "{{route('utilities.create')}}" class="btn btn-primary mb-3">Thêm mới</a><br>
                <tbody>
                  @foreach ($utilities as $utility)
            <tr>   
                <td>{{$utility->id}}</td>
                <td>{{$utility->name}}</td>
                {{-- <td>{{$utility->price}}</td> --}}
                <td>{{$utility->address}}</td>
                <td>{{$utility->phonenumber}}</td>
                {{-- <td>{{$utility->openingtime}}</td>
                <td>{{$utility->closingtime}}</td>
                <td>{{$utility->rank}}</td>
                <td>{{$utility->distance}}</td>
                <td>{{strip_tags($utility->description) }}</td> --}}
                <td>    
                  @if($utility->image)
                    <img src="{{ asset('storage/utility_image/' . $utility->image) }}" alt="Utility Image" width="100">
                  @else
                      <span>Chưa có ảnh</span>
                  @endif
                </td>
                <td>{{$utility->typeofutility->name ?? 'Chưa xác định' }}</td>  <!-- Hiển thị tên loại hình -->
                <td>{{$utility->location->name ?? 'Chưa xác định' }}</td>  <!-- Hiển thị tên thành phố -->
                <td>
                    @if($utility->status == 0)
                        <span class="text-success">Hiện</span>
                    @else
                        <span class="text-danger">Ẩn</span>
                    @endif
                </td>
                <td>
                  {{-- <a class="btn btn-success" style="margin-bottom: 5px" href="{{ route('photos.create', ['id' => $location->id]) }}">Thêm ảnh</a> --}}
                  {{-- <a class="btn btn-success" style="margin-bottom: 5px" href="{{ route('photos.create', ['id_location' => $utility->id]) }}">Thêm ảnh</a> --}}

                    <a class="btn btn-primary" href="{{ route('utilities.edit', ['id' => $utility->id]) }}">Sửa</a>
                    <a onclick="return confirm('Bạn có thật sự muốn xóa không?')" class="btn btn-danger" href="{{ route('utilities.destroy', ['id' => $utility->id]) }}">Xóa</a>
                </td>
            </tr>
        @endforeach

                </tbody>
                <tfoot>
                <tr>
                  <th>Id</th>
                  <th>Tên tiện ích</th>
                  {{-- <th>Giá</th> --}}
                  <th>Địa chỉ</th>
                  <th>Số điện thoại</th>
                  {{-- <th>Giờ mở cửa</th>
                  <th>Giờ đóng cửa</th>
                  <th>Xếp hạng</th>
                  <th>Khoảng cách</th>
                  <th>Mô tả</th> --}}
                  <th>Hình ảnh</th>
                  <th>Trạng thái</th>
                  <th>Loại tiện ích</th>
                  <th>Địa điểm</th>
                  <th width="105px">Thao tác</th>           
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



