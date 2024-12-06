@extends('admin.index')
@section('title_name')
    Sửa nguyên liệu 
@endsection
@section('path')
    Sửa nguyên liệu
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
            <form id="quickForm" action="{{route('ingredients.update',['id'=>$ingredient->id])}}" method = "post">
                @csrf
              <div class="card-body">
                <div class="form-group">
                    <label for="exampleInputEmail1">Id</label>
                    <input type="text" name="name" value="{{$ingredient->id}}" readonly class="form-control" id="name">
                </div>
                <div class="form-group">
                    <label for="exampleInputEmail1">Tên nguyên liệu</label>
                    <input type="text" name="name" value="{{$ingredient->name}}" class="form-control" id="name">
                </div>
                <div class="form-group">
                    <label>Tên món ăn</label>
                    <select class="custom-select" name="food">
                      @foreach ($food as $f)
                        <option value="{{ $f->id }}" @if ($f->id == $ingredient->id_food) selected @endif>{{ $f->name }}</option>
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


