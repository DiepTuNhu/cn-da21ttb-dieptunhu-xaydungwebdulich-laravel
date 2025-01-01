@extends('admin.index')
@section('title_name')
    Danh sách bài viết
@endsection
@section('path')
    Danh sách bài viết
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
                    <th>Tiêu đề</th>
                    <th>Nội dung</th>
                    <th>Người dùng</th>
                    <th>Thời gian</th>
                    <th>Trạng thái</th>
                    <th width="105px">Thao tác</th>
                </tr>
                </thead>
                
                <tbody>
                  @foreach ($posts as $post)
                <tr>
                    <td>{{ $post->id }}</td>
                    <td>{{ $post->title }}</td>
                    <td>{{ strip_tags($post->content) }}</td>
                    <td>{{ $post->user->username }}</td>
                    <td>{{ $post->created_at }}</td>
                    <td>
                        <div style="display: flex; align-items: center;">
                            @if($post->status == 0)
                                <span class="text-success">Hiện</span>
                            @else
                                <span class="text-danger">Ẩn</span>
                            @endif
                            <form action="{{ route('admin.posts.toggleStatus', $post->id) }}" method="POST" style="margin-left: 10px;">
                                @csrf
                                <button type="submit" class="btn btn-sm btn-primary">
                                    @if($post->status == 0)
                                        Ẩn
                                    @else
                                        Hiện
                                    @endif
                                </button>
                            </form>
                        </div>
                    </td>
                    <td>
                        <form action="{{ route('admin.posts.destroy', $post->id) }}" method="POST" style="display:inline;">
                            @csrf
                            @method('DELETE')
                            <button onclick="return confirm('Bạn có thật sự muốn xóa không?')" type="submit" class="btn btn-sm btn-danger">Xóa</button>
                        </form>
                    </td>
                </tr>
            @endforeach

                </tbody>
                <tfoot>
                    <tr>
                        <th>ID</th>
                        <th>Tiêu đề</th>
                        <th>Nội dung</th>
                        <th>Người dùng</th>
                        <th>Thời gian</th>
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
