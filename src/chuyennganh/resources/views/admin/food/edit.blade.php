@extends('admin.index')
@section('title_name')
    Sửa món ăn
@endsection
@section('path')
    Sửa món ăn
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
            <form id="quickForm" action="{{ route('food.update',['id'=>$food->id]) }}" method = "post">
                @csrf
              <div class="card-body">
                <div class="form-group">
                    <label for="exampleInputEmail1">Id</label>
                    <input type="text" name="name" value="{{$food->id}}" class="form-control" id="name" readonly>
                  </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Tên món ăn</label>
                  <input type="text" name="name" value="{{$food->name}}" class="form-control" id="name">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Giá bán</label>
                    <input type="text" name="price" value="{{$food->price}}" class="form-control" id="price">
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Đơn vị</label>
                  <input type="text" name="unit" value="{{$food->unit}}" class="form-control" id="unit">
              </div>
                <div class="mx-4 w-80 ">
                  <label for="exampleInputEmail1">Mô tả</label>      
                      <textarea class="ms-3" id="summernote" name="description">
                        {{$food->description}}
                      </textarea>  
                </div>
                <div class="mx-4 w-80">
                  <div class="form-group">
                    <label>Tên danh mục</label>
                    <select class="custom-select" name="category">
                      @foreach ($categories as $category)
                         <option value="{{ $category->id }}" @if ($category->id == $food->id_category) selected @endif>{{ $category->name }}</option>
                      @endforeach
                      
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


