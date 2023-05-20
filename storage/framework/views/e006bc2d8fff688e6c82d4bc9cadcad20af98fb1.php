

<?php $__env->startSection('content'); ?>
<div class="container" style="padding:20px;padding-top:75px">
	<h2 class="tengah">Tambah Data Peminjaman Buku</h2>
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
		<form class="form-horizontal" enctype="multipart/form-data" style="padding:20px" role="form" method="POST" action="<?php echo e(url('datatransaksi/datapeminjaman')); ?>">
			<input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
			<div class="form-group">
				<label id="id_buku" class="col-md-4 control-label">Pilih Buku <font style="color:red">*</font></label>
				<div class="col-md-6">
					<select id="id_buku" name="id_buku" class="form-control" required="required">
						<option value="" selected disabled hidden>Pilih Buku</option>
						<?php if(isset($_GET['id_buku'])): ?>
						<?php $__currentLoopData = $databuku; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
						<option value="<?php echo e($value->id_buku); ?>" <?php if($value->id_buku == $_GET['id_buku']) echo 'selected'?>>Kode: <?php echo e($value->kodebuku); ?>, Judul:  <?php echo e($value->judulbuku); ?>, Author: <?php echo e($value->author); ?>, Tahun: <?php echo e($value->tahun); ?></option>
						<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
						<?php else: ?>
						<option value="<?php echo e($value->id_buku); ?>">Kode: <?php echo e($value->kodebuku); ?>, Judul:  <?php echo e($value->judulbuku); ?>, Author: <?php echo e($value->author); ?>, Tahun: <?php echo e($value->tahun); ?></option>
						<?php endif; ?>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label id="tanggalpeminjaman" class="col-md-4 control-label">Tanggal Peminjaman <font style="color:red">*</font></label>
				<div class="col-md-6">
					<input type="date" id="tanggalpeminjaman" class="form-control" name="tanggalpeminjaman" required/>
				</div>
			</div>
			<div class="form-group">
				<label id="id_member" class="col-md-4 control-label">Peminjam/Member <font style="color:red">*</font></label>
				<div class="col-md-6">
					<select id="id_member" name="id_member" class="form-control" required="required">
						<option value="" selected disabled hidden>Pilih Peminjam/Member</option>
						<?php $__currentLoopData = $datauser; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
						<option value="<?php echo e($value->id_member); ?>">Nama: <?php echo e($value->name); ?>, Nomor Member: <?php echo e($value->nimnidnnip); ?>, Nomor Telepon: <?php echo e($value->nomortelepon); ?></option>
						<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label id="id_member" class="col-md-4 control-label">Catatan</label>
				<div class="col-md-6">
					<textarea id="catatan" name="catatan" class="form-control" placeholder="Catatan/Keterangan Peminjaman"></textarea>
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
					<a href="<?php echo e(url('datatransaksi')); ?>" class="btn btn-primary" style="width:100%;background-color:red">
						KEMBALI KE DATA TRANSAKSI
					</a>
				</div>
			</div>
		</form>
	</div>
</div>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('datatable'); ?>
<script src="<?php echo e(asset('js/selectize.min.js')); ?>"></script>
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
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\perpustakaan\resources\views/admin/datatransaksi/datapeminjaman/create.blade.php ENDPATH**/ ?>