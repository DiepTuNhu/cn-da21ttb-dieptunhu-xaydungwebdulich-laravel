@extends('user.master')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <h1 class="card-header text-center mt-3">Đăng bài viết</h1>

            <div class="card-body">
                @if (session('success'))
                    <div class="alert alert-success">
                        {{ session('success') }}
                    </div>
                @endif

                @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif

                <form method="POST" action="{{ route('post.store') }}">
                    @csrf
                
                    <div class="form-group">
                        <label for="title">Tiêu đề</label>
                        <input type="text" class="form-control" id="title" name="title" required>
                    </div>
                
                    <div class="form-group mt-5 mb-5">
                        <label for="content">Nội dung</label>
                        <textarea class="form-control" id="content"></textarea>
                        <!-- Input ẩn để lưu dữ liệu từ CKEditor -->
                        <input type="hidden" id="hidden-content" name="content">
                    </div>
                
                    <div class="form-group">
                        <label for="id_location">Địa điểm</label>
                        <input type="number" class="form-control" id="id_location" name="id_location" value="{{ $id_location }}" readonly>
                    </div>
                    <div class="d-flex justify-content-end mt-auto">
                        <button type="submit" class="btn mt-3 mb-3" style="background-color: #65a30d">Đăng bài</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.ckeditor.com/ckeditor5/39.0.1/classic/ckeditor.js"></script>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        ClassicEditor
            .create(document.querySelector('#content'), {
                ckfinder: {
                    uploadUrl: '{{ route('ckeditor.upload', ['_token' => csrf_token() ]) }}',
                }
            })
            .then(editor => {
                const hiddenContentInput = document.querySelector('#hidden-content');

                // Đồng bộ dữ liệu CKEditor vào input ẩn
                editor.model.document.on('change:data', () => {
                    hiddenContentInput.value = editor.getData();
                });
            })
            .catch(error => {
                console.error(error);
            });
    });
</script>

@endsection
