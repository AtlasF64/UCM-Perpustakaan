@extends('layouts.app')

@section('content')
<div class="container" style="padding:20px;padding-top:75px">
	<h2 class="tengah">Tambah Data Peminjaman Buku</h2>
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
		<form class="form-horizontal" enctype="multipart/form-data" style="padding:20px" role="form" method="POST" action="{{url('datatransaksi/datapeminjaman')}}">
			<input type="hidden" name="_token" value="{{ csrf_token() }}">
			<div class="form-group">
				<label id="id_buku" class="col-md-4 control-label">Pilih Buku <font style="color:red">*</font></label>
				<div class="col-md-6">
					<select id="id_buku" name="id_buku" class="form-control" required="required">
						<option value="" selected disabled hidden>Pilih Buku</option>
						@foreach($databuku as $key => $value)
						<option value="{{$value->id_buku}}" <?php if(isset($_GET['id_buku']) == $value->id_buku) echo 'selected'?>>Kode: {{$value->kodebuku}}, Judul:  {{$value->judulbuku}}, Author: {{$value->author}}, Tahun: {{$value->tahun}}</option>
						@endforeach
					</select>
				</div>
			</div>
			<div class="form-group">
				<label id="tanggalpeminjaman" class="col-md-4 control-label">Tanggal Peminjaman <font style="color:red">*</font></label>
				<div class="col-md-6">
					<input type="date" id="tanggalpeminjaman" class="form-control" name="tanggalpeminjaman" required/>
				</div>
			</div>
			<div class="form-group">
				<label id="id_member" class="col-md-4 control-label">Peminjam/Member <font style="color:red">*</font></label>
				<div class="col-md-6">
					<select id="id_member" name="id_member" class="form-control" required="required">
						<option value="" selected disabled hidden>Pilih Peminjam/Member</option>
						@foreach($datauser as $key => $value)
						<option value="{{$value->id_member}}">Nama: {{$value->name}}, Nomor Member: {{$value->nimnidnnip}}, Nomor Telepon: {{$value->nomortelepon}}</option>
						@endforeach
					</select>
				</div>
			</div>
			<div class="form-group">
				<label id="id_member" class="col-md-4 control-label">Catatan</label>
				<div class="col-md-6">
					<textarea id="catatan" name="catatan" class="form-control" placeholder="Catatan/Keterangan Peminjaman"></textarea>
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
