@extends('layouts.app')

@section('content')
<div class="container" style="padding:20px;padding-top:75px">
	<h2 class="tengah">Tambah Data Pengembalian Buku</h2>
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
		<form class="form-horizontal" enctype="multipart/form-data" style="padding:20px" role="form" method="POST" action="{{url('datatransaksi/datapengembalian')}}">
			<input type="hidden" name="_token" value="{{ csrf_token() }}">
			<div class="form-group">
				<label id="id_peminjaman" class="col-md-4 control-label">Pilih Data Peminjaman <font style="color:red">*</font></label>
				<div class="col-md-6">
					<select id="id_peminjaman" name="id_peminjaman" class="form-control" required="required">
						<option value="" selected disabled hidden>Pilih Data Peminjaman</option>
						@if(isset($_GET['id_peminjaman']))
						@foreach($datapeminjaman as $key => $value)
						<?php 
						$date1 = new DateTime(date("Y-m-d", strtotime("+7 day", strtotime($value->tanggalpeminjaman))));
						$date2 = new DateTime(date("Y-m-d"));
						$interval = $date1->diff($date2);
						?>
						@if(date('Y-m-d') <= date('Y-m-d', strtotime("+7 day", strtotime($value->tanggalpeminjaman))))
						<option value="{{$value->id_peminjaman2}}" <?php if($_GET['id_peminjaman'] == $value->id_peminjaman) echo 'selected'?>>Kode: {{$value->kode_peminjaman}}, Judul Buku:  {{$value->judulbuku}}, Member: {{$value->name}}, Telat: 0 Hari, Jumlah Denda: Rp 0</option>
						@else
						<option value="{{$value->id_peminjaman2}}" <?php if($_GET['id_peminjaman'] == $value->id_peminjaman) echo 'selected'?>>Kode: {{$value->kode_peminjaman}}, Judul Buku:  {{$value->judulbuku}}, Member: {{$value->name}}, Telat: {{$interval->days}} Hari, Jumlah Denda: Rp {{number_format($interval->days * 5000),0}}</option>
						@endif
						@endforeach
						@else
						@foreach($datapeminjaman as $key => $value)
						<?php 
						$date1 = new DateTime(date("Y-m-d", strtotime("+7 day", strtotime($value->tanggalpeminjaman))));
						$date2 = new DateTime(date("Y-m-d"));
						$interval = $date1->diff($date2);
						?>
						@if(date('Y-m-d') <= date('Y-m-d', strtotime("+7 day", strtotime($value->tanggalpeminjaman))))
						<option value="{{$value->id_peminjaman2}}">Kode: {{$value->kode_peminjaman}}, Judul Buku:  {{$value->judulbuku}}, Member: {{$value->name}}, Telat: 0 Hari, Jumlah Denda: Rp 0</option>
						@else
						<option value="{{$value->id_peminjaman2}}">Kode: {{$value->kode_peminjaman}}, Judul Buku:  {{$value->judulbuku}}, Member: {{$value->name}}, Telat: {{$interval->days}} Hari, Jumlah Denda: Rp {{number_format($interval->days * 5000),0}}</option>
						@endif
						@endforeach
						@endif
					</select>
				</div>
			</div>
			<div class="form-group">
				<label id="tanggalpengembalian" class="col-md-4 control-label">Tanggal Pengembalian <font style="color:red">*</font></label>
				<div class="col-md-6">
					<input type="date" id="tanggalpengembalian" class="form-control" name="tanggalpengembalian" required/>
				</div>
			</div>
			<div class="form-group">
				<label id="jumlahdenda" class="col-md-4 control-label">Nominal Denda Yang Dibayarkan <font style="color:red">*</font></label>
				<div class="col-md-6">
					<input type="number" value="0" id="jumlahdenda" class="form-control" name="jumlahdenda" required/>
				</div>
			</div>
			<div class="form-group">
				<label id="id_member" class="col-md-4 control-label">Catatan</label>
				<div class="col-md-6">
					<textarea id="catatan" name="catatan" class="form-control" placeholder="Catatan/Keterangan Pengembalian"></textarea>
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-6 col-md-offset-4">
					<button type="submit" class="btn btn-primary" style="width:100%">
						SUBMIT
					</button>
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-6 col-md-offset-4">
					<a href="{{url('datatransaksi')}}" class="btn btn-primary" style="width:100%;background-color:red">
						KEMBALI KE DATA TRANSAKSI
					</a>
				</div>
			</div>
		</form>
	</div>
</div>
@endsection
@section('datatable')
<script src="{{ asset('js/selectize.min.js') }}"></script>
<script type="text/javascript">
	$(document).ready(function () {
	    $('select').selectize({

            onFocus: function (){
                category = this.getValue();
                this.clear(true);
            },
            onBlur:function () {
                if(this.getValue().length == 0 && this.getValue() != category){
                    this.setValue(category);
                }
            }

        });
	});
</script>
@endsection
