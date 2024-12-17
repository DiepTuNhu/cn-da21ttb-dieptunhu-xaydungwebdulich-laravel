<!-- Carousel -->
<div id="demo" class="carousel slide" data-bs-ride="carousel">
  <!-- Indicators/dots -->
  <div class="carousel-indicators">
    @foreach($slides as $key => $slide)
      <button 
        type="button" 
        data-bs-target="#demo" 
        data-bs-slide-to="{{ $key }}" 
        class="{{ $key === 0 ? 'active' : '' }}">
      </button>
    @endforeach
  </div>

  <!-- The slideshow/carousel -->
  <div class="carousel-inner">
    @foreach($slides as $key => $slide)
      <div class="carousel-item {{ $key === 0 ? 'active' : '' }}">
        <!-- Hiển thị hình ảnh -->
        <img src="{{ asset('storage/slide_image/' . $slide->image) }}" alt="{{ $slide->title }}" class="d-block w-100">

      </div>
    @endforeach
  </div>

  <!-- Left and right controls/icons -->
  <button
    class="carousel-control-prev"
    type="button"
    data-bs-target="#demo"
    data-bs-slide="prev"
  >
    <span class="carousel-control-prev-icon"></span>
  </button>
  <button
    class="carousel-control-next"
    type="button"
    data-bs-target="#demo"
    data-bs-slide="next"
  >
    <span class="carousel-control-next-icon"></span>
  </button>
  <!-- Search bar chồng lên carousel -->
  <div class="search-bar position-absolute">
    <form action="{{ route('search') }}" method="GET" style="margin:0">
      <input type="text" class="form-control" name="key" placeholder="Tìm kiếm..." />
      <button type="submit" class="btn search">Tìm</button>
    </form>    
  </div>
</div>