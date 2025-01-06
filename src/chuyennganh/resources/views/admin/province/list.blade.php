@extends('admin.index')
@section('title_name')
    Tỉnh/thành phố
@endsection

@section('path')
    Tỉnh/thành phố
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
                    <th>Mã tỉnh</th>
                    <th>Tên tỉnh/thành phố</th>
                    <th>Trạng thái</th>
                    <th width="105px" class="text-center">Thao tác</th>
                </tr>
                </thead>
                <a href = "{{route('provinces.create')}}" class="btn btn-primary mb-3">Thêm mới</a><br>
                <tbody>
                    @foreach ($provinces as $province)
                    <tr>   
                        <td>{{$province->id}}</td>
                        <td>{{$province->code}}</td>
                        <td>{{$province->name}}</td>
                        <td>
                          @if($province->status == 0)
                              <span class="text-success">Hiện</span>
                          @else
                              <span class="text-danger">Ẩn</span>
                          @endif
                        </td>
                        <td>
                  <a class="btn btn-success" style="margin-bottom: 5px" href="{{ route('locations.index', ['id' => $province->id]) }}">Xem địa điểm</a>

                            <a class = "btn btn-primary" href = "{{route('provinces.edit',['id'=>$province->id])}}">Sửa</a>
                            <a onclick = "return confirm('Bạn có thật sự muốn xóa không?')" class = "btn btn-danger" href = "{{route('provinces.destroy',['id'=>$province->id])}}">Xóa</a>
                        </td>
                    </tr>
                  @endforeach
                </tbody>
                <tfoot>
                <tr>
                    <th>Id</th>
                    <th>Mã tỉnh</th>
                    <th>Tên tỉnh/thành phố</th>
                    <th>Trạng thái</th>
                    <th class="text-center">Thao tác</th>
                   
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



