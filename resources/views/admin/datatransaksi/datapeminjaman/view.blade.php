@extends('layouts.app')

@section('content')
<div class="container" style="padding:20px;padding-top:75px">
	<h2 class="tengah"><b>Detail Peminjaman Buku</b></h2>
	<?php if(Session::has('message_success')): ?>
    <div class="message-success" style="margin:4px">
       	<?php echo Session::get('message_success')?>
    </div>
    <?php endif;?>
    <?php if(Session::has('message_failed')): ?>
    <div class="message-failed" style="margin:4px">
        <?php echo Session::get('message_failed')?>
    </div>
    <?php endif;?>
	<div class="row">
		<h3><b>Informasi Peminjaman Buku</b></h3>
		<hr>
		<h4><b>Nama Peminjam:</b> {{$value->name}}</h4>
		<h4><b>Kode Peminjaman:</b> {{$value->kode_peminjaman}}</h4>
		<h4><b>Tanggal Peminjaman:</b> {{date("l, d M Y", strtotime($value->tanggalpeminjaman))}}</h4>
		<h4><b>Tanggal Jatuh Tempo:</b> {{date("l, d M Y", strtotime("+7 day", strtotime($value->tanggalpeminjaman)))}}</h4>
		@if(date('Y-m-d') <= date('Y-m-d', strtotime("+7 day", strtotime($value->tanggalpeminjaman))))
		<h4><b>Jumlah Denda:</b> Rp 0</h4>
		@else
		<?php 
		$denda = 0;
		$date1 = new DateTime(date("Y-m-d", strtotime("+7 day", strtotime($value->tanggalpeminjaman))));
		$date2 = new DateTime(date("Y-m-d"));
		$interval = $date1->diff($date2);
		if($interval->days * 10000 > 140000)
			$denda = 140000;
		else
			$denda = $interval->days * 10000;
		
		?>
		
		<h4><b>Jumlah Denda:</b> Rp {{number_format($denda),0}}</h4>
		@endif
		<h4><b>Catatan: {{$value->catatan}}</b> 
		<h4><b>Status Peminjaman:</b> 
		@include('include.statustransaksipeminjaman')</h4>
		<h3><b>Informasi Buku Yang Dipinjam</b></h3>
		<hr>
		<div class="row">
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
				
				<h4><b>Judul Buku:</b> {{$value->judulbuku}}</h4>
				<h4><b>Kode Buku:</b> {{$value->kodebuku}}</h4>
				<h4><b>Status:</b> @include('include/statuspeminjaman')</h4>
				<h4><b>Pengarang:</b> {{$value->author}}</h4>
				<h4><b>Penerbit:</b> {{$value->publisher}}</h4>
				<h4><b>Kota Penerbit:</b> {{$value->kota}}</h4>
				<h4><b>Tahun Terbit:</b> {{$value->tahun}}</h4>
				<h4><b>Status Kategori:</b> @include('include/statuskategori') 
				</h4>
			</div>
		</div>
		<h3 id="pengembalian"><b>Informasi Pengembalian Buku</b></h3>
		<hr>
		@if($value->id_pengembalian == null)
		<h4>Belum Ada Data Pengembalian Untuk Peminjaman Ini</h4>
		<a href="{{url('/datapengembalian/create?id_peminjaman=')}}{{$value->id_peminjaman2}}" class="btn btn-primary">Tambah Data Pengembalian</a>
		@else
		<h4><b>Kode Pengembalian:</b> {{$value->kode_pengembalian}}</h4>
		<h4><b>Tanggal Pengembalian:</b> {{date("l, d M Y", strtotime($value->tanggalpengembalian))}}</h4>
		<h4><b>Jumlah Denda Yang Dibayar:</b> Rp {{number_format($value->jumlahdenda),0}}</h4>
		<h4><b>Catatan: {{$value->catatanpengembalian}}</b> 
		@endif
	</div>
</div>
@endsection
