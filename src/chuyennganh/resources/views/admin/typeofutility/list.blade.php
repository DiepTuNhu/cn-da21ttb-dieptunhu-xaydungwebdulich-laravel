@extends('admin.index')
@section('title_name')
    Loại tiện ích
@endsection

@section('path')
    Loại tiện ích
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
                    <th>Tên loại tiện ích</th>
                    <th>Trạng thái</th>
                    <th width="105px" class="text-center">Thao tác</th>
                </tr>
                </thead>
                <a href = "{{route('typeofutilities.create')}}" class="btn btn-primary mb-3">Thêm mới</a><br>
                <tbody>
                    @foreach ($typeofutilities as $typeofutility)
                    <tr>   
                        <td>{{$typeofutility->id}}</td>
                        <td>{{$typeofutility->name}}</td>
                        <td>
                          @if($typeofutility->status == 0)
                              <span class="text-success">Visible</span>
                          @else
                              <span class="text-danger">Hidden</span>
                          @endif
                        </td>
                        <td>
                            <a class = "btn btn-primary" href = "{{route('typeofutilities.edit',['id'=>$typeofutility->id])}}">Sửa</a>
                            <a onclick = "return confirm('Bạn có thật sự muốn xóa không?')" class = "btn btn-danger" href = "{{route('typeofutilities.destroy',['id'=>$typeofutility->id])}}">Xóa</a>
                        </td>
                    </tr>
                  @endforeach
                </tbody>
                <tfoot>
                <tr>
                    <th>Id</th>
                    <th>Tên loại tiện ích</th>
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



