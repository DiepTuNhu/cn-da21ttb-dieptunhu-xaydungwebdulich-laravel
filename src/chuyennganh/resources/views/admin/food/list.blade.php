@extends('admin.index')
@section('title_name')
   Món ăn
@endsection
@section('path')
   Món ăn
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
                    <th>Tên món ăn</th>
                    <th>Giá bán</th>
                    <th>Đơn vị </th>                   
                    <th>Tên danh mục</th>
                    <th class="text-center">Thao tác</th>
                </tr>
                </thead>
                <a href = "{{route('food.create')}}" class="btn btn-primary mb-3">Thêm mới</a><br>
                <tbody>
                    @foreach ($foods as $food)
                    <tr>   
                        <td>{{$food->id}}</td>
                        <td>{{$food->name}}</td>
                        <td>{{$food->price}}</td>
                        <td>{{$food->unit}}</td>                     
                        <td>{{$food->categories->name}}</td>
                        <td width="105px">       
                            <a class = "btn btn-primary" href ="{{route('food.edit',['id'=>$food->id])}}">Sửa</a>
                            <a onclick="return confirm('Bạn có thật sự muốn xóa không?')" class="btn btn-danger" href="{{route('food.destroy',['id'=>$food->id])}}">Xóa</a>
                          </td>
                    </tr>
                  @endforeach
                </tbody>
                <tfoot>
                <tr>
                    <th>Id</th>
                    <th>Tên món ăn</th>
                    <th>Giá bán</th>
                    <th>Đơn vị </th>
                    <th>Tên danh mục</th>
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



