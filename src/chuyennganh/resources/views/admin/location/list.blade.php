@extends('admin.index')
@section('title_name')
    Địa điểm
@endsection
@section('path')
  Địa điểm
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
                    <th>Tên địa điểm</th>
                    <th>Địa chỉ</th>
                    <th>Mô tả</th>
                    <th>Loại hình</th>
                    <th>Tỉnh/thành phố</th>
                    <th>Trạng thái</th>
                    <th width="105px">Thao tác</th>
                </tr>
                </thead>
                <a href = "{{route('locations.create')}}" class="btn btn-primary mb-3">Thêm mới</a><br>
                <tbody>
                  @foreach ($locations as $location)
            <tr>   
                <td>{{$location->id}}</td>
                <td>{{$location->name}}</td>
                <td>{{$location->address}}</td>
                <td>{{strip_tags($location->description) }}</td>
                <td>{{$location->types->name ?? 'Chưa xác định' }}</td>  <!-- Hiển thị tên loại hình -->
                <td>{{$location->provinces->name ?? 'Chưa xác định' }}</td>  <!-- Hiển thị tên thành phố -->
                <td>
                    @if($location->status == 0)
                        <span class="text-success">Visible</span>
                    @else
                        <span class="text-danger">Hidden</span>
                    @endif
                </td>
                <td>
                    <a class="btn btn-primary" href="{{ route('locations.edit', ['id' => $location->id]) }}">Sửa</a>
                    <a onclick="return confirm('Bạn có thật sự muốn xóa không?')" class="btn btn-danger" href="{{ route('locations.destroy', ['id' => $location->id]) }}">Xóa</a>
                </td>
            </tr>
        @endforeach

                </tbody>
                <tfoot>
                <tr>
                  <th>Id</th>
                  <th>Tên địa điểm</th>
                  <th>Địa chỉ</th>
                  <th>Mô tả</th>
                  <th>Loại hình</th>
                  <th>Tỉnh/thành phố</th>
                  <th>Trạng thái</th>
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



