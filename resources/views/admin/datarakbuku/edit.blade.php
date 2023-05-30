@extends('layouts.app')

@section('content')
<div class="container" style="padding:20px;padding-top:75px">
	<h2 class="tengah">Ubah Data Rak Buku</h2>
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
		 <form class="form-horizontal" role="form" enctype="multipart/form-data" method="POST" action="{{url('datarakbuku')}}/{{$datarakbuku->id_rakbuku}}" style="padding:20px">
            <input name="_method" type="hidden" value="PUT">
            <input type="hidden" name="_token" value="{{ csrf_token() }}">
			<div class="form-group">
				<label id="rakbuku" class="col-md-4 control-label">Rak Buku <font style="color:red">*</font></label>
				<div class="col-md-6">
					<textarea id="rakbuku" class="form-control" name="rakbuku" maxlength="30" required>{{$datarakbuku->rakbuku}}</textarea>
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
					<a href="{{url('datarakbuku')}}" class="btn btn-primary" style="width:100%;background-color:red">
						KEMBALI KE DATA KATEGORI BUKU
					</a>
				</div>
			</div>
		</form>
	</div>
</div>
@endsection
