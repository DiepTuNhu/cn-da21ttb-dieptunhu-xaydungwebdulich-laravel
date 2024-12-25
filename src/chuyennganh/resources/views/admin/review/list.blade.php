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
                    <th>Điểm</th>
                    <th>Bình luận</th>
                    <th>Thời gian</th>
                    <th>Người dùng</th>
                    <th>Địa điểm</th>
                    <th>Trạng thái</th>
                    <th width="105px">Thao tác</th>
                </tr>
                </thead>
                
                <tbody>
                  @foreach ($reviews as $review)
            <tr>   
                <td>{{$review->id}}</td>
                <td>{{$review->point}}</td>
                <td>{{$review->comment}}</td>
                <td>{{$review->time}}</td>
                <td>{{$review->user->username ?? 'Chưa xác định' }}</td>
                <td>{{$review->location->name ?? 'Chưa xác định' }}</td>
                <td>
                    <div style="display: flex; align-items: center;">
                        @if($review->status == 0)
                            <span class="text-success">Hiện</span>
                        @else
                            <span class="text-danger">Ẩn</span>
                        @endif
                        <form action="{{ route('reviews.toggleStatus', $review->id) }}" method="POST" style="margin-left: 10px;">
                            @csrf
                            <button type="submit" class="btn btn-sm btn-primary">
                                @if($review->status == 0)
                                    Ẩn
                                @else
                                    Hiện
                                @endif
                            </button>
                        </form>
                    </div>
                </td>
                <td>
                    <form action="{{ route('reviews.destroy', $review->id) }}" method="POST" style="display:inline;">
                      @csrf
                      @method('DELETE')
                      <button onclick = "return confirm('Bạn có thật sự muốn xóa không?')" type="submit" class="btn btn-sm btn-danger">Xóa</button>
                  </form>
                </td>
            </tr>
        @endforeach

                </tbody>
                <tfoot>
                <tr>
                  <th>ID</th>
                    <th>Điểm</th>
                    <th>Bình luận</th>
                    <th>Thời gian</th>
                    <th>Người dùng</th>
                    <th>Địa điểm</th>
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
