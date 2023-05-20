@extends('ucmlibrary.layouts.appuser')

@section('content')
<div class="container" style="padding: 20px">
    
    @if(Auth::guest())
        <center style="padding-top:40px">
            <h2>Silahkan <a href="{{url('login')}}">Login</a> Terlebih Dahulu Untuk Melihat Detail Informasi Buku</h2>
        </center>
    @else
    	<div class="row">
	    	<div class="col-md-4">
				<div class="preview-pic tab-content">
				  	<div class="tab-pane active" id="pic-1">
				  		<img src="{{asset('img/fotocoverbuku')}}/{{$value->fotocoverbuku}}" class="img-responsive" style="width: 100%" />
				  	</div>
				</div>
			</div>
			<div class="col-md-8">
				<h3 class="product-title"><b>{{$value->judulbuku}}</b></h3>
				<h4><b>Kode Buku:</b> {{$value->kodebuku}}</h4>
				<h4><b>Status:</b> @include('include/statuspeminjaman')</h4>
				<h4><b>Pengarang:</b> {{$value->author}}</h4>
				<h4><b>Penerbit:</b> {{$value->publisher}}</h4>
				<h4><b>Kota Penerbit:</b> {{$value->kota}}</h4>
				<h4><b>Tahun Terbit:</b> {{$value->tahun}}</h4>
				<h4><b>Status Kategori:</b> @include('include/statuskategori') 
					<font class="help-tip" data-toggle="modal" data-target="#exampleModal">
					</font>
					<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="z-index:10000">
					  <div class="modal-dialog" role="document">
					    <div class="modal-content">
					      <div class="modal-body">
					        <h4>Jika Status Kategori Buku: Dosen, Maka Buku Hanya Boleh Dipinjam Dosen dan Tidak Boleh Dipinjam Mahasiswa</h4>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
					       
					      </div>
					    </div>
					  </div>
					</div>
				</h4>
			</div>
		</div>
    @endif
    
</div>
@endsection