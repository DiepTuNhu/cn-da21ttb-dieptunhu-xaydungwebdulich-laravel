@extends('admin.index')
@section('title_name')
    Sửa tỉnh/thành phố
@endsection
@section('path')
    Sửa tỉnh/thành phố
@endsection

@section('content')
<section class="content">
    <div class="container-fluid">
      <div class="row">
        <!-- left column -->
        <div class="col-md-12">
          <!-- jquery validation -->
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title"></h3>
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form id="quickForm" action="{{route('provinces.update',['id'=>$province->id])}}" method = "post">
                @csrf
              <div class="card-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Id</label>
                  <input type="text" name="provinceName" class="form-control" value="{{$province->id}}"id="provinceName" readonly>
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Tên Tên tỉnh/thành phố</label>
                  <input type="text" name="provinceName" class="form-control" value="{{$province->name}}"id="provinceName">
                </div>
                <div class="form-group">
                  <label for="status">Trạng thái</label>
                  <select name="status" class="form-control" id="status">
                      <option value="0" {{ $province->status == 0 ? 'selected' : '' }}>Hiện</option>
                      <option value="1" {{ $province->status == 1 ? 'selected' : '' }}>Ẩn</option>
                  </select>
                </div>
              </div>
              <!-- /.card-body -->
              <div class="card-footer">
                <button type="submit" class="btn btn-primary">Sửa</button>
              </div>
            </form>
          </div>
          <!-- /.card -->
          </div>
        <!--/.col (left) -->
        <!-- right column -->
        <div class="col-md-6">

        </div>
        <!--/.col (right) -->
      </div>
      <!-- /.row -->
    </div><!-- /.container-fluid -->
  </section> 
@endsection


