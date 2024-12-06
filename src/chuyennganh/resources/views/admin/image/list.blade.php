@extends('admin.index')
@section('title_name')
    Hình ảnh
@endsection
@section('path')
    Hình ảnh
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
                    <th>Hình ảnh</th>
                    <th>Tên món ăn</th>
                    <th width="105px" class="text-center">Thao tác</th>
                </tr>
                </thead>
                <a href = "{{route('images.create')}}" class="btn btn-primary mb-3">Thêm mới</a><br>
                <tbody>
                    @foreach ($images as $image)
                    <tr>   
                        <td>{{$image->id}}</td>
                        <td><img src="admin/images/{{$image->image}}" width="100px" height="100px"></td>
                        <td>{{$image->Food->name}}</td>
                        <td>
                            <a class = "btn btn-primary" href = "{{route('images.edit',['id'=>$image->id])}}">Sửa</a>
                            <a onclick = "return confirm('Bạn có thật sự muốn xóa không?')" class = "btn btn-danger" href = "{{route('images.destroy',['id'=>$image->id])}}">Xóa</a>
                        </td>
                    </tr>
                  @endforeach
                </tbody>
                <tfoot>
                <tr>
                  <th>Id</th>
                  <th>Hình ảnh</th>
                  <th>Tên món ăn</th>
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



