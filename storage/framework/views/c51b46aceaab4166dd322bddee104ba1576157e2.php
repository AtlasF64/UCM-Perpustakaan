

<?php $__env->startSection('content'); ?>
<div class="container" style="padding: 20px">
    
    <?php if(Auth::guest()): ?>
        <center style="padding-top:40px">
            <h2>Silahkan <a href="<?php echo e(url('login')); ?>">Login</a> Terlebih Dahulu Untuk Melihat Detail Informasi Buku</h2>
        </center>
    <?php else: ?>
    	<div class="row">
	    	<div class="col-md-4">
				<div class="preview-pic tab-content">
				  	<div class="tab-pane active" id="pic-1">
				  		<img src="<?php echo e(asset('img/fotocoverbuku')); ?>/<?php echo e($value->fotocoverbuku); ?>" class="img-responsive" style="width: 100%" />
				  	</div>
				</div>
			</div>
			<div class="col-md-8">
				<h3 class="product-title"><b><?php echo e($value->judulbuku); ?></b></h3>
				<h4><b>Kode Buku:</b> <?php echo e($value->kodebuku); ?></h4>
				<h4><b>Status:</b> <?php echo $__env->make('include/statuspeminjaman', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?></h4>
				<h4><b>Pengarang:</b> <?php echo e($value->author); ?></h4>
				<h4><b>Penerbit:</b> <?php echo e($value->publisher); ?></h4>
				<h4><b>Kota Penerbit:</b> <?php echo e($value->kota); ?></h4>
				<h4><b>Tahun Terbit:</b> <?php echo e($value->tahun); ?></h4>
				<h4><b>Status Kategori:</b> <?php echo $__env->make('include/statuskategori', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?> 
					<font class="help-tip" data-toggle="modal" data-target="#exampleModal">
					</font>
					<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="z-index:10000">
					  <div class="modal-dialog" role="document">
					    <div class="modal-content">
					      <div class="modal-body">
					        <h4>Jika Status Kategori Buku: Dosen, Maka Buku Hanya Boleh Dipinjam Dosen dan Tidak Boleh Dipinjam Mahasiswa</h4>
					      </div>
					      <div class="modal-footer">
					        <button type="button" class="btn btn-secondary" data-dismiss="modal">Tutup</button>
					       
					      </div>
					    </div>
					  </div>
					</div>
				</h4>
			</div>
		</div>
    <?php endif; ?>
    
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('ucmlibrary.layouts.appuser', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\perpustakaan\resources\views/ucmlibrary/detailbooks.blade.php ENDPATH**/ ?>