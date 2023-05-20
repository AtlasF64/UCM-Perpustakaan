

<?php $__env->startSection('content'); ?>
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
	                <a href="<?php echo e(url('datatransaksi/datapeminjaman')); ?>/create" class="btn btn-primary" target="_blank">Tambah Data Peminjaman</a>
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

				        <?php $__currentLoopData = $datapeminjaman; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>

				          	<?php if(date('Y-m-d') <= date('Y-m-d', strtotime("+7 day", strtotime($value->tanggalpeminjaman)))): ?>
				          	<tr>
				          	<?php else: ?>
				          	<?php if($value->tanggalpengembalian != ""): ?>
				          	<tr>
				          	<?php else: ?>
				          	<tr style="background-color:yellow">
				          	<?php endif; ?>
				          	<?php endif; ?>
				           	 	<td><?php echo $i;?></td>
				            	<td><?php echo e($value->kode_peminjaman); ?></td>
				            	<td><?php echo e(date("l, d M Y", strtotime($value->tanggalpeminjaman))); ?></td>
				            	<td><?php echo e($value->name); ?></td>
				            	<td><?php echo e(date("l, d M Y", strtotime("+7 day", strtotime($value->tanggalpeminjaman)))); ?></td>
				            	<td>
				            		<?php echo $__env->make('include.statustransaksipeminjaman', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
				            	</td>
				            	<td style="text-align:right">
				            		<a href="<?php echo e(url('datatransaksi/datapeminjaman')); ?>/<?php echo e($value->id_peminjaman2); ?>" style="color:skyblue"><i class="fa fa-eye"></i></a>
				            	</td>
				            	<td>
				            		<button type="button" class="notabutton" data-toggle="modal" data-target="#exampleModal2<?php echo e($value->id_peminjaman); ?>" style="float:right"><i class="fa fa-trash"></i></button>
				            		<div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModal2<?php echo e($value->id_peminjaman); ?>" aria-hidden="true" id="exampleModal2<?php echo e($value->id_peminjaman); ?>" style="margin-top:100px">
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
			                                    	<form method="POST" action="<?php echo e(url('datatransaksi/datapeminjaman')); ?>/<?php echo e($value->id_peminjaman2); ?>" accept-charset="UTF-8">
			                                    		<input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
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
				        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
				        </tbody>
				    </table>
				</div>
          	</div>
	        <div role="tabpanel" class="tab-pane fade" id="two">
	            <div class="row" style="margin:0px">
	                <a href="<?php echo e(url('datatransaksi/datapengembalian')); ?>/create" class="btn btn-primary" target="_blank">Tambah Data Pengembalian</a>
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

				        <?php $__currentLoopData = $datapengembalian; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
				          	<tr>
				           	 	<td><?php echo $i;?></td>
				            	<td><?php echo e($value->kode_pengembalian); ?></td>
				            	<td><?php echo e($value->kode_peminjaman); ?></td>
				            	<td><?php echo e(date("l, d M Y", strtotime($value->tanggalpengembalian))); ?></td>
				            	<td><?php echo e($value->name); ?></td>
				            	<td>Rp <?php echo e(number_format($value->jumlahdenda,0)); ?></td>
				            	<td>
				            		<?php echo e($value->catatanpengembalian); ?>

				            	</td>
				            	<td style="text-align:right">
				            		<a href="<?php echo e(url('datatransaksi/datapeminjaman')); ?>/<?php echo e($value->id_peminjaman); ?>#pengembalian" style="color:skyblue"><i class="fa fa-eye"></i></a>
				            	</td>
				            	<td>
				            		<button type="button" class="notabutton" data-toggle="modal" data-target="#exampleModal2P<?php echo e($value->id_pengembalian); ?>" style="float:right"><i class="fa fa-trash"></i></button>
				            		<div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModal2P<?php echo e($value->id_pengembalian); ?>" aria-hidden="true" id="exampleModal2P<?php echo e($value->id_pengembalian); ?>" style="margin-top:100px">
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
			                                    	<form method="POST" action="<?php echo e(url('datatransaksi/datapengembalian')); ?>/<?php echo e($value->id_pengembalian); ?>" accept-charset="UTF-8">
			                                    		<input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
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
				        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
				        </tbody>
				    </table>
				</div>
	        </div>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('datatable'); ?>
<script src="<?php echo e(asset('js/jquery.dataTables.min.js')); ?>"></script>
<script src="<?php echo e(asset('js/dataTables.bootstrap.min.js')); ?>"></script>
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
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\perpustakaan\resources\views/admin/datatransaksi/index.blade.php ENDPATH**/ ?>