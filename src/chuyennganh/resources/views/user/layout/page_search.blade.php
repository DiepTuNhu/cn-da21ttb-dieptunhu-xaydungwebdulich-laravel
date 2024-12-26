@extends('user.master')
@section('content')
@include('user.layout.search')

<div class="container-fluid container-location">
  <h2 class="text-content p-4 m-0">Kết quả tìm kiếm cho: "{{ $key }}"</h2>
  <div class="search-results">
    {{-- <h3>Kết quả tìm kiếm cho: "{{ $key }}"</h3> --}}

    @if($locations->isEmpty())
        <p>Không tìm thấy địa điểm nào.</p>
    @else
        <div class="card-container pb-4">
            @foreach($locations as $location)
                <div class="card">
                    @php
                        $imagePath = $location->mainImage 
                                    ? asset('storage/location_image/' . $location->mainImage->name) 
                                    : asset('storage/default-image.jpg');
                    @endphp
                    
                    <img class="card-img-top" src="{{ $imagePath }}" alt="Card image" />
                    <div class="card-body">
                        <h4 class="card-title">{{ $location->name }}</h4>
                        <p class="card-text">
                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" style="fill: rgba(101, 163, 13, 1); padding: 2px;">
                                <path d="M12 2C7.589 2 4 5.589 4 9.995 3.971 16.44 11.696 21.784 12 22c0 0 8.029-5.56 8-12 0-4.411-3.589-8-8-8zm0 12c-2.21 0-4-1.79-4-4s1.79-4 4-4 4 1.79 4 4-1.79 4-4 4z"></path>
                            </svg> {{ $location->address }}
                        </p>
                        <a href="{{ route('page.detail_location', ['id' => $location->id]) }}" class="btn">Xem chi tiết</a>
                        {{-- <a href="{{ route('location.show', $location->id) }}" class="btn">Xem chi tiết</a> --}}
                    </div>
                </div>
            @endforeach
        </div>
    @endif
</div>



</div>

