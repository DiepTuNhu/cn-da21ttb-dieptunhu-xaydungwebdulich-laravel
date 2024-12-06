@extends('admin.index')
@section('title_name')
    Nguyên liệu
@endsection
@section('path')
    Nguyên liệu
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
                    <th>Tên nguyên liệu</th>
                    <th>Tên món ăn</th>
                    <th width="105px"></th>
                </tr>
                </thead>
                <a href = "{{route('ingredients.create')}}" class="btn btn-primary mb-3">Thêm mới</a><br>
                <tbody>
                    @foreach ($ingredients as $ingredient)
                    <tr>   
                        <td>{{$ingredient->id}}</td>
                        <td>{{$ingredient->name}}</td>
                        <td>{{$ingredient->Food->name}}</td>
                        <td>
                            <a class = "btn btn-primary" href = "{{route('ingredients.edit',['id'=>$ingredient->id])}}">Sửa</a>
                            <a onclick = "return confirm('Bạn có thật sự muốn xóa không?')" class = "btn btn-danger" href = "{{route('ingredients.destroy',['id'=>$ingredient->id])}}">Xóa</a>
                        </td>
                    </tr>
                  @endforeach
                </tbody>
                <tfoot>
                <tr>
                  <th>Id</th>
                  <th>Tên nguyên liệu</th>
                  <th>Tên món ăn</th>
                  <th width="105px"></th>                  
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



