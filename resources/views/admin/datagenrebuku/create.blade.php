@extends('layouts.app')

@section('content')
<div class="container" style="padding:20px;padding-top:75px">
	<h2 class="tengah">Tambah Data Genre Buku</h2>
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
		<form class="form-horizontal" enctype="multipart/form-data" style="padding:20px" role="form" method="POST" action="{{url('datagenrebuku')}}">
			<input type="hidden" name="_token" value="{{ csrf_token() }}">
			<div class="form-group">
				<label id="genrebuku" class="col-md-4 control-label">Genre Buku <font style="color:red">*</font></label>
				<div class="col-md-6">
					<textarea id="genrebuku" class="form-control" name="genrebuku" maxlength="30" required>{{ old('genrebuku') }}</textarea>
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-6 col-md-offset-4 mt-2">
					<button type="submit" class="btn btn-primary" style="width:100%">
						SUBMIT
					</button>
				</div>
			</div>
			<div class="form-group">
				<div class="col-md-6 col-md-offset-4 mt-2">
					<a href="{{url('datagenrebuku')}}" class="btn btn-primary" style="width:100%;background-color:red">
						KEMBALI KE DATA GENRE BUKU
					</a>
				</div>
			</div>
		</form>
	</div>
</div>
@endsection
