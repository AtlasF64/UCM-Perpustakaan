

<?php $__env->startSection('content'); ?>
<div class="container" style="padding:20px;padding-top:75px">
	<h2 class="tengah">Tambah Data Pengembalian Buku</h2>
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
		<form class="form-horizontal" enctype="multipart/form-data" style="padding:20px" role="form" method="POST" action="<?php echo e(url('datatransaksi/datapengembalian')); ?>">
			<input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
			<div class="form-group">
				<label id="id_peminjaman" class="col-md-4 control-label">Pilih Data Peminjaman <font style="color:red">*</font></label>
				<div class="col-md-6">
					<select id="id_peminjaman" name="id_peminjaman" class="form-control" required="required">
						<option value="" selected disabled hidden>Pilih Data Peminjaman</option>
						<?php if(isset($_GET['id_peminjaman'])): ?>
						<?php $__currentLoopData = $datapeminjaman; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
						<?php 
						$date1 = new DateTime(date("Y-m-d", strtotime("+7 day", strtotime($value->tanggalpeminjaman))));
						$date2 = new DateTime(date("Y-m-d"));
						$interval = $date1->diff($date2);
						?>
						<?php if(date('Y-m-d') <= date('Y-m-d', strtotime("+7 day", strtotime($value->tanggalpeminjaman)))): ?>
						<option value="<?php echo e($value->id_peminjaman2); ?>" <?php if($_GET['id_peminjaman'] == $value->id_peminjaman) echo 'selected'?>>Kode: <?php echo e($value->kode_peminjaman); ?>, Judul Buku:  <?php echo e($value->judulbuku); ?>, Member: <?php echo e($value->name); ?>, Telat: 0 Hari, Jumlah Denda: Rp 0</option>
						<?php else: ?>
						<option value="<?php echo e($value->id_peminjaman2); ?>" <?php if($_GET['id_peminjaman'] == $value->id_peminjaman) echo 'selected'?>>Kode: <?php echo e($value->kode_peminjaman); ?>, Judul Buku:  <?php echo e($value->judulbuku); ?>, Member: <?php echo e($value->name); ?>, Telat: <?php echo e($interval->days); ?> Hari, Jumlah Denda: Rp <?php echo e(number_format($interval->days * 5000),0); ?></option>
						<?php endif; ?>
						<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
						<?php else: ?>
						<?php $__currentLoopData = $datapeminjaman; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
						<?php 
						$date1 = new DateTime(date("Y-m-d", strtotime("+7 day", strtotime($value->tanggalpeminjaman))));
						$date2 = new DateTime(date("Y-m-d"));
						$interval = $date1->diff($date2);
						?>
						<?php if(date('Y-m-d') <= date('Y-m-d', strtotime("+7 day", strtotime($value->tanggalpeminjaman)))): ?>
						<option value="<?php echo e($value->id_peminjaman2); ?>">Kode: <?php echo e($value->kode_peminjaman); ?>, Judul Buku:  <?php echo e($value->judulbuku); ?>, Member: <?php echo e($value->name); ?>, Telat: 0 Hari, Jumlah Denda: Rp 0</option>
						<?php else: ?>
						<option value="<?php echo e($value->id_peminjaman2); ?>">Kode: <?php echo e($value->kode_peminjaman); ?>, Judul Buku:  <?php echo e($value->judulbuku); ?>, Member: <?php echo e($value->name); ?>, Telat: <?php echo e($interval->days); ?> Hari, Jumlah Denda: Rp <?php echo e(number_format($interval->days * 5000),0); ?></option>
						<?php endif; ?>
						<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
						<?php endif; ?>
					</select>
				</div>
			</div>
			<div class="form-group">
				<label id="tanggalpengembalian" class="col-md-4 control-label">Tanggal Pengembalian <font style="color:red">*</font></label>
				<div class="col-md-6">
					<input type="date" id="tanggalpengembalian" class="form-control" name="tanggalpengembalian" required/>
				</div>
			</div>
			<div class="form-group">
				<label id="jumlahdenda" class="col-md-4 control-label">Nominal Denda Yang Dibayarkan <font style="color:red">*</font></label>
				<div class="col-md-6">
					<input type="number" value="0" id="jumlahdenda" class="form-control" name="jumlahdenda" required/>
				</div>
			</div>
			<div class="form-group">
				<label id="id_member" class="col-md-4 control-label">Catatan</label>
				<div class="col-md-6">
					<textarea id="catatan" name="catatan" class="form-control" placeholder="Catatan/Keterangan Pengembalian"></textarea>
				</div>
			</div>\
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

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\perpustakaan\resources\views/admin/datatransaksi/datapengembalian/create.blade.php ENDPATH**/ ?>