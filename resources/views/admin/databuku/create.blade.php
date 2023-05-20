@extends('layouts.app')

@section('content')
<div class="container" style="padding:20px;padding-top:75px">
	<h2 class="tengah">Tambah Data Buku</h2>
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
		<form class="form-horizontal" enctype="multipart/form-data" style="padding:20px" role="form" method="POST" action="{{url('databuku')}}">
			<input type="hidden" name="_token" value="{{ csrf_token() }}">
			<div class="form-group">
				<label id="kodebuku" class="col-md-4 control-label">Kode Buku <font style="color:red">*</font></label>
				<div class="col-md-6">
					<input type="text" id="kodebuku" class="form-control" name="kodebuku" maxlength="12" value="{{old('kodebuku')}}" required/>
				</div>
			</div>
			<div class="form-group">
				<label id="kategoribuku" class="col-md-4 control-label">Kategori Buku <font style="color:red">*</font></label>
				<div class="col-md-6">
					<select id="kategoribuku" name="kategoribuku" class="form-control" required="required">
						<option value="" selected disabled hidden>Pilih Kategori</option>
						@foreach($datakategoribuku as $key => $value)
						<option value="{{$value->id_kategoribuku}}">{{$value->kategoribuku}}</option>
						@endforeach
					</select>
				</div>
			</div>
			<div class="form-group">
				<label id="judulbuku" class="col-md-4 control-label">Judul Buku <font style="color:red">*</font></label>
				<div class="col-md-6">
					<textarea id="judulbuku" class="form-control" name="judulbuku" required>{{ old('judulbuku') }}</textarea>
				</div>
			</div>
			<div class="form-group">
				<label id="author" class="col-md-4 control-label">Author <font style="color:red">*</font></label>
				<div class="col-md-6">
					<textarea id="author" class="form-control" name="author" required>{{ old('author') }}</textarea>
				</div>
			</div>
			<div class="form-group">
				<label id="publisher" class="col-md-4 control-label">Publisher <font style="color:red">*</font></label>
				<div class="col-md-6">
					<textarea id="publisher" class="form-control" name="publisher" required>{{ old('publisher') }}</textarea>
				</div>
			</div>
			<div class="form-group">
				<label id="kota" class="col-md-4 control-label">Kota <font style="color:red">*</font></label>
				<div class="col-md-6">
					<input type="text" id="kota" class="form-control" name="kota" maxlength="30" value="{{old('kota')}}" required/>
				</div>
			</div>
			<div class="form-group">
				<label id="tahun" class="col-md-4 control-label">Tahun <font style="color:red">*</font></label>
				<div class="col-md-6">
					<select id="tahun" name="tahun" class="form-control" required="required">
						<option value="" selected disabled hidden>Pilih Tahun</option>
						@for($i=date('Y');$i>=1950;$i--)
						<option value="{{$i}}">{{$i}}</option>
						@endfor
					</select>
				</div>
			</div>
			<div class="form-group">
				<label id="fotocoverbuku" class="col-md-4 control-label">Upload Foto Cover Buku <font style="color:red">*</font></label>
				<div class="col-md-6">
					<input type="file" id="fotocoverbuku" class="form-control" name="fotocoverbuku" accept=".jpg,.png,.jpeg"/>
				</div>
			</div>
			<div class="form-group">
				<label id="status_kategori" class="col-md-4 control-label">Status Kategori Buku <font style="color:red">*</font></label>
				<div class="col-md-6">
					<select id="status_kategori" name="status_kategori" class="form-control" required="required">
						<option value="" selected disabled hidden>Pilih Status Kategori Buku</option>
						<option value="0">Mahasiswa</option>
						<option value="1">Dosen</option>
					</select>
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
					<a href="{{url('databuku')}}" class="btn btn-primary" style="width:100%;background-color:red">
						KEMBALI KE DATA BUKU
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
