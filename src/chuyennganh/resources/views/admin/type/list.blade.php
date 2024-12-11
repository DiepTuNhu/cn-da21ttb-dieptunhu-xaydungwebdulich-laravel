@extends('admin.index')
@section('title_name')
    Loại hình du lịch
@endsection

@section('path')
    Loại hình du lịch
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
                    <th>Tên loại hình</th>
                    <th>Trạng thái</th>
                    <th width="105px" class="text-center">Thao tác</th>
                </tr>
                </thead>
                <a href = "{{route('types.create')}}" class="btn btn-primary mb-3">Thêm mới</a><br>
                <tbody>
                    @foreach ($types as $type)
                    <tr>   
                        <td>{{$type->id}}</td>
                        <td>{{$type->name}}</td>
                        <td>
                          @if($type->status == 0)
                              <span class="text-success">Visible</span>
                          @else
                              <span class="text-danger">Hidden</span>
                          @endif
                        </td>
                        <td>
                            <a class = "btn btn-primary" href = "{{route('types.edit',['id'=>$type->id])}}">Sửa</a>
                            <a onclick = "return confirm('Bạn có thật sự muốn xóa không?')" class = "btn btn-danger" href = "{{route('types.destroy',['id'=>$type->id])}}">Xóa</a>
                        </td>
                    </tr>
                  @endforeach
                </tbody>
                <tfoot>
                <tr>
                    <th>Id</th>
                    <th>Tên loại hình</th>
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



