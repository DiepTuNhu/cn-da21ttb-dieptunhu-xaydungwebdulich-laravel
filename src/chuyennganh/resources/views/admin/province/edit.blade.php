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
            <form id="quickForm" action="{{ route('provinces.update', ['id' => $province->id]) }}" method="post">
                @csrf
                <!-- Không sử dụng @method('PUT') -->
              <div class="card-body">
                <div class="form-group">
                  <label for="provinceId">Id</label>
                  <input type="text" name="provinceId" class="form-control" value="{{ $province->id }}" id="provinceId" readonly>
                </div>
                <div class="form-group">
                  <label for="provinceCode">Mã tỉnh</label>
                  <input type="number" name="provinceCode" class="form-control" value="{{ $province->code }}" id="provinceCode">
                </div>
                <div class="form-group">
                  <label for="provinceName">Tên tỉnh/thành phố</label>
                  <input type="text" name="provinceName" class="form-control" value="{{ $province->name }}" id="provinceName">
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
