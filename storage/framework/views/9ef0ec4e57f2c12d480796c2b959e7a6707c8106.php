<?php $__env->startSection('content'); ?>
<div class="container" style="padding:20px;padding-top:75px">
	<h2 class="tengah">Tambah Data Kategori Buku</h2>
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
		<form class="form-horizontal" enctype="multipart/form-data" style="padding:20px" role="form" method="POST" action="<?php echo e(url('datakategoribuku')); ?>">
			<input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
			<div class="form-group">
				<label id="kategoribuku" class="col-md-4 control-label">Kategori Buku <font style="color:red">*</font></label>
				<div class="col-md-6">
					<textarea id="kategoribuku" class="form-control" name="kategoribuku" maxlength="30" required><?php echo e(old('kategoribuku')); ?></textarea>
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
					<a href="<?php echo e(url('datakategoribuku')); ?>" class="btn btn-primary" style="width:100%;background-color:red">
						KEMBALI KE DATA KATEGORI BUKU
					</a>
				</div>
			</div>
		</form>
	</div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\ASUS\Documents\GitHub\UCM-Perpustakaan\resources\views/admin/datakategoribuku/create.blade.php ENDPATH**/ ?>