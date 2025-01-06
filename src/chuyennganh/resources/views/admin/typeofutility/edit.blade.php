@extends('admin.index')
@section('title_name')
    Sửa loại tiện ích
@endsection
@section('path')
    Sửa loại tiện ích
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
            <form id="quickForm" action="{{route('typeofutilities.update',['id'=>$typeofutility->id])}}" method = "post">
                @csrf
              <div class="card-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Id</label>
                  <input type="text" name="typeofutilityName" class="form-control" value="{{$typeofutility->id}}"id="typeofutilityName" readonly>
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Tên loại tiện ích</label>
                  <input type="text" name="typeofutilityName" class="form-control" value="{{$typeofutility->name}}"id="typeofutilityName">
                </div>
                <div class="form-group">
                  <label for="status">Trạng thái</label>
                  <select name="status" class="form-control" id="status">
                      <option value="0" {{ $typeofutility->status == 0 ? 'selected' : '' }}>Hiện</option>
                      <option value="1" {{ $typeofutility->status == 1 ? 'selected' : '' }}>Ẩn</option>
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


