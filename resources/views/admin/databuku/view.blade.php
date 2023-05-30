@extends('layouts.app')

@section('content')
<div class="container" style="padding:20px;padding-top:75px">
	<div class="card">
		<div class="container-fliud" style="padding-top:20px">
			<div class="wrapper row">
				<div class="preview col-md-4">
					<div class="preview-pic tab-content">
					  	<div class="tab-pane active" id="pic-1">
							@if ($value === true)
							<img src="{{asset('img/fotocoverbuku')}}/{{$value->fotocoverbuku}}" class="img-responsive"/>
							@else
							<img src="{{asset('img/fotocoverbuku/default.png')}}" class="img-responsive"/>
							@endif
					  		
					  	</div>
					</div>
				</div>
				<div class="details col-md-8">
					<h3 class="product-title"><b>{{$value->judulbuku}}</b></h3>
					<h4><b>Genre Buku:</b> {{$valuegenre->genrebuku}}</h4>
					<h4><b>Kategori:</b> {{$value->kategoribuku}}</h4>
					<h4><b>Rak:</b> {{$valuerak->rakbuku}}</h4>
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
					@if($value->status_buku == "0")
					<div class="action">
						<a href="{{url('datatransaksi/datapeminjaman/create?id_buku=')}}{{$value->id_buku}}" class="btn btn-primary">Pinjam</a>
					</div>
					@endif
				</div>
			</div>
		</div>
	</div>
</div>
@endsection
@section('datatable')
<script src="{{ asset('js/selectize.min.js') }}"></script>
<script type="text/javascript">
	$(document).ready(function () {
	    $('select').selectize({
	          sortField: 'text'
	    });
	});
</script>
@endsection
