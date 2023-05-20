@extends('layouts.app')

@section('content')
<div class="container" style="padding:20px;padding-top:75px">
	<h2 class="tengah">Informasi Member</h2>
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
	<div class="row" style="margin: 0px">
		<table id="datatableboots" class="table table-bordered" style="margin-top:10px;width:100%">
	        <thead class="warnaawal">
	            <tr>
	              	<th style="width:30px">No</th>
	              	<th>Kode Member</th>
	              	<th>Email</th>
	              	<th>Nama</th>
	              	<th>Nomor Telepon</th>
	              	<th>Alamat</th>
	              	<th>Status Member</th>
	              	<th></th>
	            </tr>
	        </thead>
	        <tbody>
	          	<?php $i=1?>
	          	@foreach($user as $key => $value)
	          	<tr>
	           	 	<td>{{$i}}</td>
	            	<td>{{$value->nimnidnnip}}</td>
	            	<td>{{$value->email}}</td>
	            	<td>{{$value->name}}</td>
	            	<td>{{$value->nomortelepon}}</td>
	            	<td>{{$value->alamat}}</td>
	            	<td>
	            		@if($value->status_akun == "0")
	            		Admin
	            		@elseif($value->status_akun == "1")
	            		Mahasiswa
	            		@elseif($value->status_akun == "2")
	            		Dosen
	            		@elseif($value->status_akun == "3")
	            		Staff
	            		@endif
	            	</td>
	            	<td style="text-align:right;color:blue">
			          	<a href="{{ url('informasiuser') }}/{{$value->id_member}}/edit" style="color:green"><i class="fa fa-edit"></i></a>
			        </td>
	          	</tr>
	          	<?php $i++?>
	          	@endforeach
	        </tbody>
	    </table>
	</div>
</div>
@endsection
@section('datatable')
<script src="{{ asset('js/jquery.dataTables.min.js') }}"></script>
<script src="{{ asset('js/dataTables.bootstrap.min.js') }}"></script>
<script type="text/javascript">
	$(document).ready(function(e) {
		var t = $('#datatableboots').DataTable( {
			"scrollX": true,
		    "deferRender": true,
		    "responsive": true
	    } );
    });
</script>
@endsection
