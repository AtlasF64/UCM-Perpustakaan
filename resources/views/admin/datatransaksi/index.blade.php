@extends('layouts.app')

@section('content')
<div class="container" style="padding:30px;padding-top:65px">
	<h2 class="tengah">Seluruh Data Peminjaman</h2>
	<?php if(Session::has('message_success')): ?>
    <div class="message-success" style="margin:-20px;margin-top:20px;margin-bottom:20px">
       	<?php echo Session::get('message_success')?>
    </div>
    <?php endif;?>
    <?php if(Session::has('message_failed')): ?>
    <div class="message-failed" style="margin:-20px;margin-top:20px;margin-bottom:20px">
        <?php echo Session::get('message_failed')?>
    </div>
    <?php endif;?>
    <div class="row" style="margin:0px">
        <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist" style="margin-top:15px">
            <li role="presentation" class="active">
              <a href="#one" aria-controls="one" role="tab" data-toggle="tab">Data Peminjaman</a>
            </li>
            <li role="presentation">
              <a href="#two" aria-controls="two" role="tab" data-toggle="tab">Data Pengembalian</a>
            </li>
        </ul>
        <hr>
        <div class="tab-content">
            <div role="tabpanel" class="tab-pane fade in active" id="one">
            	<div class="row" style="margin:0px">
	                <a href="{{ url('datatransaksi/datapeminjaman') }}/create" class="btn btn-primary" target="_blank">Tambah Data Peminjaman</a>
					<table id="datatableboots" class="table table-bordered" style="margin-top:10px;width:100%">
				        <thead class="warnaawal">
				            <tr>
				              	<th style="width:30px">No</th>
				              	<th>Kode Peminjaman</th>
				              	<th>Tanggal Peminjaman</th>
				              	<th>Peminjam/Member</th>
				              	<th>Tanggal Jatuh Tempo</th>
				              	<th>Status</th>
				              	<th></th>
				              	<th></th>
				            </tr>
				        </thead>
				        <tbody>
				        <?php $i = 1?>

				        @foreach($datapeminjaman as $key => $value)

				          	@if(date('Y-m-d') <= date('Y-m-d', strtotime("+7 day", strtotime($value->tanggalpeminjaman))))
				          	<tr>
				          	@else
				          	@if($value->tanggalpengembalian != "")
				          	<tr>
				          	@else
				          	<tr style="background-color:yellow">
				          	@endif
				          	@endif
				           	 	<td><?php echo $i;?></td>
				            	<td>{{$value->kode_peminjaman}}</td>
				            	<td>{{date("l, d M Y", strtotime($value->tanggalpeminjaman))}}</td>
				            	<td>{{$value->name}}</td>
				            	<td>{{date("l, d M Y", strtotime("+7 day", strtotime($value->tanggalpeminjaman)))}}</td>
				            	<td>
				            		@include('include.statustransaksipeminjaman')
				            	</td>
				            	<td style="text-align:right">
				            		<a href="{{ url('datatransaksi/datapeminjaman') }}/{{$value->id_peminjaman2}}" style="color:skyblue"><i class="fa fa-eye"></i></a>
				            	</td>
				            	<td>
				            		<button type="button" class="notabutton" data-toggle="modal" data-target="#exampleModal2{{$value->id_peminjaman}}" style="float:right"><i class="fa fa-trash"></i></button>
				            		<div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModal2{{$value->id_peminjaman}}" aria-hidden="true" id="exampleModal2{{$value->id_peminjaman}}" style="margin-top:100px">
			                          <div class="modal-dialog" role="document">
			                            <div class="modal-content">
			                              <div class="modal-header">
			                                <h5 class="modal-title"><b>Hapus Data Peminjaman</b></h5>
			                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			                                  <span aria-hidden="true">&times;</span>
			                                </button>
			                              </div>
			                              <div class="modal-body">
			                                <p>Apakah Anda Yakin Akan Menghapus Data Peminjaman?</p>
			                              </div>
			                              <div class="modal-footer">
			                                <div class="row">
			                                    <div class="col-md-8">
			                                    </div>
			                                    <div class="col-md-2" style="margin-top:10px">
			                                    	<form method="POST" action="{{ url('datatransaksi/datapeminjaman') }}/{{$value->id_peminjaman2}}" accept-charset="UTF-8">
			                                    		<input type="hidden" name="_token" value="{{ csrf_token() }}">
														<input name="_method" type="hidden" value="DELETE">
														<button type="submit" class="btn btn-primary" style="background-color:red;width:100%">Hapus</button>
			                                    	</form>
			                                    </div>
			                                    <div class="col-md-2" style="margin-top:10px">
			                                        <button type="button" class="btn btn-secondary" data-dismiss="modal" style="width:100%">Tutup</button>
			                                    </div>
			                                </div>
			                              </div>
			                            </div>
			                          </div>
			                        </div>
				            	</td>
				          	</tr>
				        <?php $i++;?>
				        @endforeach
				        </tbody>
				    </table>
				</div>
          	</div>
	        <div role="tabpanel" class="tab-pane fade" id="two">
	            <div class="row" style="margin:0px">
	                <a href="{{ url('datatransaksi/datapengembalian') }}/create" class="btn btn-primary" target="_blank">Tambah Data Pengembalian</a>
					<table id="datatableboots2" class="table table-bordered" style="margin-top:10px;width:100%">
				        <thead class="warnaawal">
				            <tr>
				              	<th style="width:30px">No</th>
				              	<th>Kode Pengembalian</th>
				              	<th>Kode Peminjaman</th>
				              	<th>Tanggal Pengembalian</th>
				              	<th>Peminjam/Member</th>
				              	<th>Jumlah Denda Yang Dibayar</th>
				              	<th>Catatan</th>
				              	<th></th>
				              	<th></th>
				            </tr>
				        </thead>
				        <tbody>
				        <?php $i = 1?>

				        @foreach($datapengembalian as $key => $value)
				          	<tr>
				           	 	<td><?php echo $i;?></td>
				            	<td>{{$value->kode_pengembalian}}</td>
				            	<td>{{$value->kode_peminjaman}}</td>
				            	<td>{{date("l, d M Y", strtotime($value->tanggalpengembalian))}}</td>
				            	<td>{{$value->name}}</td>
				            	<td>Rp {{number_format($value->jumlahdenda,0)}}</td>
				            	<td>
				            		{{$value->catatanpengembalian}}
				            	</td>
				            	<td style="text-align:right">
				            		<a href="{{ url('datatransaksi/datapeminjaman') }}/{{$value->id_peminjaman}}#pengembalian" style="color:skyblue"><i class="fa fa-eye"></i></a>
				            	</td>
				            	<td>
				            		<button type="button" class="notabutton" data-toggle="modal" data-target="#exampleModal2P{{$value->id_pengembalian}}" style="float:right"><i class="fa fa-trash"></i></button>
				            		<div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModal2P{{$value->id_pengembalian}}" aria-hidden="true" id="exampleModal2P{{$value->id_pengembalian}}" style="margin-top:100px">
			                          <div class="modal-dialog" role="document">
			                            <div class="modal-content">
			                              <div class="modal-header">
			                                <h5 class="modal-title"><b>Hapus Data Pengembalian</b></h5>
			                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			                                  <span aria-hidden="true">&times;</span>
			                                </button>
			                              </div>
			                              <div class="modal-body">
			                                <p>Apakah Anda Yakin Akan Menghapus Data Pengembalian?</p>
			                              </div>
			                              <div class="modal-footer">
			                                <div class="row">
			                                    <div class="col-md-8">
			                                    </div>
			                                    <div class="col-md-2" style="margin-top:10px">
			                                    	<form method="POST" action="{{ url('datatransaksi/datapengembalian') }}/{{$value->id_pengembalian}}" accept-charset="UTF-8">
			                                    		<input type="hidden" name="_token" value="{{ csrf_token() }}">
														<input name="_method" type="hidden" value="DELETE">
														<button type="submit" class="btn btn-primary" style="background-color:red;width:100%">Hapus</button>
			                                    	</form>
			                                    </div>
			                                    <div class="col-md-2" style="margin-top:10px">
			                                        <button type="button" class="btn btn-secondary" data-dismiss="modal" style="width:100%">Tutup</button>
			                                    </div>
			                                </div>
			                              </div>
			                            </div>
			                          </div>
			                        </div>
				            	</td>
				          	</tr>
				        <?php $i++;?>
				        @endforeach
				        </tbody>
				    </table>
				</div>
	        </div>
        </div>
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
	    var t2 = $('#datatableboots2').DataTable( {
			"scrollX": true,
		    "deferRender": true,
		    "responsive": true
	    } );
    });
</script>
@endsection