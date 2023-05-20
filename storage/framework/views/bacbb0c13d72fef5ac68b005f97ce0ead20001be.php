

<?php $__env->startSection('content'); ?>
<div class="container" style="padding:30px;padding-top:65px">
	<h2 class="tengah">Seluruh Data Kategori Buku</h2>
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
  	<a href="<?php echo e(url('datakategoribuku')); ?>/create" class="btn btn-primary" style="margin-left:-15px;">Tambah Data</a>
	<div class="row">
		<table id="datatableboots" class="table table-bordered" style="margin-top:10px;width:100%">
	        <thead class="warnaawal">
	            <tr>
	              	<th style="width:30px">No</th>
	              	<th>Kategori Buku</th>
	              	<th></th>
	              	<th></th>
	            </tr>
	        </thead>
	        <tbody>
	        <?php $i = 1?>
	        <?php $__currentLoopData = $datakategoribuku; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
	          	<tr>
	           	 	<td><?php echo $i;?></td>
	            	<td><?php echo e($value->kategoribuku); ?></td>
	            	<td style="text-align:right;color:blue">
			          	<a href="<?php echo e(url('datakategoribuku')); ?>/<?php echo e($value->id_kategoribuku); ?>/edit" style="color:green"><i class="fa fa-edit"></i></a>
			        </td>
	            	<td>
	            		<button type="button" class="notabutton" data-toggle="modal" data-target="#exampleModal2<?php echo e($value->id_kategoribuku); ?>" style="float:right"><i class="fa fa-trash"></i></button>
	            		<div class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModal2<?php echo e($value->id_kategoribuku); ?>" aria-hidden="true" id="exampleModal2<?php echo e($value->id_kategoribuku); ?>" style="margin-top:100px">
                          <div class="modal-dialog" role="document">
                            <div class="modal-content">
                              <div class="modal-header">
                                <h5 class="modal-title"><b>Hapus Data Kategori Buku</b></h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                                </button>
                              </div>
                              <div class="modal-body">
                                <p>Apakah Anda Yakin Akan Menghapus Data Kategori Buku?</p>
                              </div>
                              <div class="modal-footer">
                                <div class="row">
                                    <div class="col-md-8">
                                    </div>
                                    <div class="col-md-2" style="margin-top:10px">

                                    	<form method="POST" action="<?php echo e(url('datakategoribuku')); ?>/<?php echo e($value->id_kategoribuku); ?>" accept-charset="UTF-8">
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
    });
</script>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\perpustakaan\resources\views/admin/datakategoribuku/index.blade.php ENDPATH**/ ?>