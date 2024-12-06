@extends('admin.index')
@section('title_name')
    Thêm món ăn
@endsection
@section('path')
    Thêm món ăn
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
            <form id="quickForm" action="{{ route('food.store') }}" method = "post">
                @csrf
              <div class="card-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Tên món ăn</label>
                  <input type="text" name="name" class="form-control" id="name" placeholder="Nhập tên danh mục">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Giá bán</label>
                    <input type="text" name="price" class="form-control" id="price" placeholder="Nhập tên danh mục">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Đơn vị</label>
                  <input type="text" name="unit" class="form-control" id="unit" placeholder="Nhập tên danh mục">
              </div>
                <div class="mx-4 w-80 ">
                  <label for="exampleInputEmail1">Mô tả</label>      
                      <textarea class="ms-3" id="summernote" name="description">
                      </textarea>  
                </div>
                <div class="mx-4 w-80">
                  <div class="form-group">
                    <label>Tên danh mục</label>
                    <select class="custom-select" name="category">
                      @foreach ($categories as $category)
                        <option value="{{ $category->id }}">{{ $category->name }}</option>
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


