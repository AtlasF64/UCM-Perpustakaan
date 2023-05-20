

<?php $__env->startSection('content'); ?>
<div class="container" style="padding:20px;padding-top:75px">
	<h2 class="tengah">Pengaturan Akun</h2>
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
	<div class="row" style="padding: 0px">
		<form class="form-horizontal" role="form" enctype="multipart/form-data" method="POST" action="">
            <input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
            <div class="row">
                <div class="col-md-3">
                </div>
                <div class="col-md-6" style="padding:0px">
                    <div class="form-group" style="padding-left:15px;padding-right:15px">
                        <label for="email">Email <font style="color:red">*</font></label>
                        <input type="text" class="form-control" name="email" value="<?php echo e(Auth::user()->email); ?>" required="required">
                    </div>
                </div>
                <div class="col-md-3">
                </div>
            </div>

            <div class="row">
                <div class="col-md-3">
                </div>
                <div class="col-md-6" style="padding:0px">
                    <div class="form-group" style="padding-left:15px;padding-right:15px">
                        <label for="name">Nama <font style="color:red">*</font></label>
                        <input type="text" class="form-control" name="name" value="<?php echo e(Auth::user()->name); ?>" required="required">
                    </div>
                </div>
                <div class="col-md-3">
                </div>
            </div>
            <div class="row">
                <div class="col-md-3">
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="password">Kata Sandi <font style="color:red">*</font></label>
                        <input type="password" class="form-control" name="password">
                    </div>
                </div>
                <div class="col-md-3">
                </div>
            </div>
            <div class="row" style="padding-top:20px">
                <div class="col-md-3">
                </div>
                <div class="col-md-6" style="padding:0px">
                    <button type="submit" class="btn btn-primary" style="width:100%">SUBMIT</button>
                </div>
                <div class="col-md-3">
                </div>
            </div>
        </form>
	</div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\perpustakaan\resources\views/admin/pengaturanakun.blade.php ENDPATH**/ ?>