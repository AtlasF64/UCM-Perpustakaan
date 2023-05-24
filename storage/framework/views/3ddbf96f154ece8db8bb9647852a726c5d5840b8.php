

<?php $__env->startSection('content'); ?>
<div class="container" style="padding:20px;padding-top:75px">
	<h2 class="tengah"><b>Detail Peminjaman Buku</b></h2>
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
		<h3><b>Informasi Peminjaman Buku</b></h3>
		<hr>
		<h4><b>Kode Peminjaman:</b> <?php echo e($value->kode_peminjaman); ?></h4>
		<h4><b>Tanggal Peminjaman:</b> <?php echo e(date("l, d M Y", strtotime($value->tanggalpeminjaman))); ?></h4>
		<h4><b>Tanggal Jatuh Tempo:</b> <?php echo e(date("l, d M Y", strtotime("+7 day", strtotime($value->tanggalpeminjaman)))); ?></h4>
		<?php if(date('Y-m-d') <= date('Y-m-d', strtotime("+7 day", strtotime($value->tanggalpeminjaman)))): ?>
		<h4><b>Jumlah Denda:</b> Rp 0</h4>
		<?php else: ?>
		<?php 
		$date1 = new DateTime(date("Y-m-d", strtotime("+7 day", strtotime($value->tanggalpeminjaman))));
		$date2 = new DateTime(date("Y-m-d"));
		$interval = $date1->diff($date2);
		?>
		<h4><b>Jumlah Denda:</b> Rp <?php echo e(number_format($interval->days * 5000),0); ?></h4>
		<?php endif; ?>
		<h4><b>Catatan: <?php echo e($value->catatan); ?></b> 
		<h4><b>Status Peminjaman:</b> 
		<?php echo $__env->make('include.statustransaksipeminjaman', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?></h4>
		<h3><b>Informasi Buku Yang Dipinjam</b></h3>
		<hr>
		<div class="row">
			<div class="preview col-md-4">
				<div class="preview-pic tab-content">
				  	<div class="tab-pane active" id="pic-1">
				  		<img src="<?php echo e(asset('img/fotocoverbuku')); ?>/<?php echo e($value->fotocoverbuku); ?>" class="img-responsive"/>
				  	</div>
				</div>
			</div>
			<div class="details col-md-8">
				<h4><b>Judul Buku:</b> <?php echo e($value->judulbuku); ?></h4>
				<h4><b>Kode Buku:</b> <?php echo e($value->kodebuku); ?></h4>
				<h4><b>Status:</b> <?php echo $__env->make('include/statuspeminjaman', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?></h4>
				<h4><b>Pengarang:</b> <?php echo e($value->author); ?></h4>
				<h4><b>Penerbit:</b> <?php echo e($value->publisher); ?></h4>
				<h4><b>Kota Penerbit:</b> <?php echo e($value->kota); ?></h4>
				<h4><b>Tahun Terbit:</b> <?php echo e($value->tahun); ?></h4>
				<h4><b>Status Kategori:</b> <?php echo $__env->make('include/statuskategori', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?> 
				</h4>
			</div>
		</div>
		<h3 id="pengembalian"><b>Informasi Pengembalian Buku</b></h3>
		<hr>
		<?php if($value->id_pengembalian == null): ?>
		<h4>Belum Ada Data Pengembalian Untuk Peminjaman Ini</h4>
		<a href="<?php echo e(url('datatransaksi/datapengembalian/create?id_peminjaman=')); ?><?php echo e($value->id_peminjaman2); ?>" class="btn btn-primary">Tambah Data Pengembalian</a>
		<?php else: ?>
		<h4><b>Kode Pengembalian:</b> <?php echo e($value->kode_pengembalian); ?></h4>
		<h4><b>Tanggal Pengembalian:</b> <?php echo e(date("l, d M Y", strtotime($value->tanggalpengembalian))); ?></h4>
		<h4><b>Jumlah Denda Yang Dibayar:</b> Rp <?php echo e(number_format($value->jumlahdenda),0); ?></h4>
		<h4><b>Catatan: <?php echo e($value->catatanpengembalian); ?></b> 
		<?php endif; ?>
	</div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\ASUS\Documents\GitHub\UCM-Perpustakaan\resources\views/admin/datatransaksi/datapeminjaman/view.blade.php ENDPATH**/ ?>