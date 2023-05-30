

<?php $__env->startSection('content'); ?>
<div class="container-fluid px-4">
	<h2 class="mt-4">Informasi Member</h2>
	<div class="card mb-6">
		<div class="card-header">
			<i class="fas fa-table me-1"></i>
			Data User
			
		</div>
		<div>
			<?php if(Session::has('message_success')): ?>
			<div class="message-success" style="margin: 1rem; float:left;">
				<?php echo Session::get('message_success'); ?>
			</div>
			<?php endif;?>
			<?php if(Session::has('message_failed')): ?>
			<div class="message-failed" style="margin: 1rem; float:left;">
				<?php echo Session::get('message_failed'); ?>
			</div>
			<?php endif;?>
		</div>
	<div class="card-body">
		<table id="example" class="table table-striped">
	        <thead>
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
	          	<?php $__currentLoopData = $user; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
	          	<tr>
	           	 	<td><?php echo e($i); ?></td>
	            	<td><?php echo e($value->nimnidnnip); ?></td>
	            	<td><?php echo e($value->email); ?></td>
	            	<td><?php echo e($value->name); ?></td>
	            	<td><?php echo e($value->nomortelepon); ?></td>
	            	<td><?php echo e($value->alamat); ?></td>
	            	<td>
	            		<?php if($value->status_akun == "0"): ?>
	            		Admin
	            		<?php elseif($value->status_akun == "1"): ?>
	            		Mahasiswa
	            		<?php elseif($value->status_akun == "2"): ?>
	            		Dosen
	            		<?php elseif($value->status_akun == "3"): ?>
	            		Staff
	            		<?php endif; ?>
	            	</td>
	            	<td style="text-align:right;color:blue">
			          	<a href="<?php echo e(url('informasiuser')); ?>/<?php echo e($value->id_member); ?>/edit" style="color:green"><i class="fa fa-edit"></i></a>
			        </td>
	          	</tr>
	          	<?php $i++?>
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

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\ASUS\Documents\GitHub\UCM-Perpustakaan\resources\views/admin/informasiuser/informasiuser.blade.php ENDPATH**/ ?>