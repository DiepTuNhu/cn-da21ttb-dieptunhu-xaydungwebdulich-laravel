@extends('admin.index')
@section('title_name')
    Sửa người dùng
@endsection
@section('path')
    Sửa người dùng
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
            <form id="quickForm" action="{{route('locations.update',['id'=>$location->id])}}" method="post" enctype="multipart/form-data">
                @csrf
              <div class="card-body">
                <div class="form-group">
                  <label for="exampleInputEmail1">Id</label>
                  <input type="text" name="name" class="form-control" value="{{$location->id}}"id="name" readonly>
                </div>
                <div class="form-group">
                  <label for="type">Loại hình</label>
                  <select name="id_type" class="form-control" id="type">
                    <option value="">Chọn loại hình</option>
                    @foreach($types as $type)
                        <option value="{{ $type->id }}" {{ $location->id_type == $type->id ? 'selected' : '' }}>{{ $type->name }}</option>
                    @endforeach
                  </select>
                </div>
                <div class="form-group">
                <label for="province">Tỉnh/thành phố</label>
                <select name="id_province" class="form-control" id="province">
                  <option value="">Chọn tỉnh/thành phố</option>
                  @foreach($provinces as $province)
                      <option value="{{ $province->id }}" {{ $location->id_province == $province->id ? 'selected' : '' }}>{{ $province->name }}</option>
                  @endforeach
                </select>               
                <div class="form-group">
                  <label for="">Tên địa điểm</label>
                  <input type="text" name="name" class="form-control" id="name" value="{{$location->name}}">
                </div>
                <div class="form-group">
                  <label for="address">Địa chỉ</label>
                  <input type="text" name="address" class="form-control" id="address" value="{{$location->address}}">
                </div>
                <div class="form-group">
                  <label for="description">Mô tả</label>
                  <textarea name="description" id="description" class="form-control">{{ old('description', $location->description)}}</textarea>
                </div>              
                </div>  
                <div class="form-group">
                  <label for="status">Trạng thái</label>
                  <select name="status" class="form-control" id="status">
                      <option value="0" {{ $location->status == 0 ? 'selected' : '' }}>Visible</option>
                      <option value="1" {{ $location->status == 1 ? 'selected' : '' }}>Hidden</option>
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


