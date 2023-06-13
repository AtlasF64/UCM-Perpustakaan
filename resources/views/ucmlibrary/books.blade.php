@extends('ucmlibrary.layouts.appuser')

@section('content')
<div class="container">
    <form action="">
        
        <div cass="row" style="padding-top:20px">
            <div class="col-4"  style="float:left">
                <input type="text" name="judul" class="form-control" placeholder="Masukkan Judul Buku" value="{{$_GET['judul']}}">
            </div>
            {{-- <div class="col-4"  style="float:left">
                <select id="kategoribuku" name="kategoribuku" class="form-control">
                    <option value="" selected disabled hidden>Pilih Kategori</option>
                    @foreach($datakategoribuku as $key => $value)
                    <option value="{{$value->id_kategoribuku}}">{{$value->kategoribuku}}</option>
                    @endforeach
                </select>
            </div> --}}
            {{-- <div class="col-4"  style="float:left">
                <input type="text" name="genre" class="form-control" placeholder="Masukkan Genre Buku" value="{{$_GET['genre']}}">
            </div> --}}
            <div class="col-3" style="float:left">
                <button type="submit" class="btn btn-primary" style="width:100%">CARI</button>
            </div>
        </div>
    </form>
    <div class="row" style="padding:30px;clear:both"> 
        @foreach($databuku as $key => $value)
        @include('include.kotakbukudua')
        @endforeach  
    </div>
    <center>
        {{ $databuku->appends($_GET)->links() }}
    </center>
    
</div>
@endsection