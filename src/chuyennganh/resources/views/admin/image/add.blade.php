@extends('admin.index')
@section('title_name')
    Thêm hình ảnh 
@endsection
@section('path')
    Thêm hình ảnh
@endsection

@section('content')
<section class="content">
    <div class="container-fluid">
      <div class="row">
        <!-- left column -->
        <div class="col-md-12">
          <!-- jquery validation -->
          <div class="card card-white">
            <div class="card-header">
               @include('admin.alert')
            </div>
            <!-- /.card-header -->
            <!-- form start -->
            <form id="quickForm" action="{{route('images.store')}}" method = "post" enctype="multipart/form-data">
                @csrf
              <div class="card-body">
                <div class="form-group">
                    <label>Chọn ảnh</label>
                    <input type="file" class="form-control" name="image">
                </div>
                <div class="form-group">
                    <label>Tên món ăn</label>
                    <select class="custom-select" name="food">
                      @foreach ($food as $f)
                        <option value="{{ $f->id }}">{{ $f->name }}</option>
                      @endforeach      
                    </select>
                  </div>
              </div>
              <!-- /.card-body -->
              <div class="card-footer">
                <button type="submit" class="btn btn-primary">Thêm</button>
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




