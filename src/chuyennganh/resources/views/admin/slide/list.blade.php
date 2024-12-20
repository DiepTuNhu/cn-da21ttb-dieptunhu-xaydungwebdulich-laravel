@extends('admin.index')
@section('title_name')
    Silde
@endsection

@section('path')
    Silde
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
                    <th>Hình ảnh</th>
                    <th>Trạng thái</th>
                    <th width="105px" class="text-center">Thao tác</th>
                </tr>
                </thead>
                <a href = "{{route('slides.create')}}" class="btn btn-primary mb-3">Thêm mới</a><br>
                <tbody>
                    @foreach ($slides as $slide)
                    <tr>   
                        <td>{{$slide->id}}</td>
                        <td>    
                          @if($slide->image)
                            <img src="{{ asset('storage/slide_image/' . $slide->image) }}" alt="Slide Image" width="100">
                          @else
                              <span>Chưa có ảnh</span>
                          @endif
                        </td>
                        <td>
                          @if($slide->status == 0)
                              <span class="text-success">Hiện</span>
                          @else
                              <span class="text-danger">Ẩn</span>
                          @endif
                        </td>
                        <td>
                            <a class = "btn btn-primary" href = "{{route('slides.edit',['id'=>$slide->id])}}">Sửa</a>
                            <a onclick = "return confirm('Bạn có thật sự muốn xóa không?')" class = "btn btn-danger" href = "{{route('slides.destroy',['id'=>$slide->id])}}">Xóa</a>
                        </td>
                    </tr>
                  @endforeach
                </tbody>
                <tfoot>
                <tr>
                    <th>Id</th>
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



