

<?php $__env->startSection('content'); ?>
<div class="container" style="padding:20px;padding-top:75px">
	<div class="card">
		<div class="container-fliud" style="padding-top:20px">
			<div class="wrapper row">
				<div class="preview col-md-4">
					<div class="preview-pic tab-content">
					  	<div class="tab-pane active" id="pic-1" >
							<?php if(is_null($value->fotocoverbuku)): ?>
							<img src="<?php echo e(asset('img/fotocoverbuku/default.png')); ?>" class="img-responsive"/>
							<?php else: ?>
							<img src="<?php echo e(asset('img/fotocoverbuku')); ?>/<?php echo e($value->fotocoverbuku); ?>" class="img-responsive"/ style="max-width: 80%;">
							<?php endif; ?>
					  	</div>
					</div>
				</div>
				<div class="details col-md-8">
					<h3 class="product-title"><b><?php echo e($value->judulbuku); ?></b></h3>
					
					<h4><b>Kategori:</b> <?php echo e($value->kategoribuku); ?></h4>
					<h4><b>Rak:</b> <?php echo e($valuerak->rakbuku); ?></h4>
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
					<?php if($value->status_buku == "0"): ?>
					<div class="action">
						<a href="<?php echo e(url('datatransaksi/datapeminjaman/create?id_buku=')); ?><?php echo e($value->id_buku); ?>" class="btn btn-primary">Pinjam</a>
					</div>
					<?php endif; ?>
				</div>
			</div>
		</div>
	</div>
</div>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('datatable'); ?>
<script src="<?php echo e(asset('js/selectize.min.js')); ?>"></script>
<script type="text/javascript">
	$(document).ready(function () {
	    $('select').selectize({
	          sortField: 'text'
	    });
	});
</script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\ASUS\Documents\GitHub\UCM-Perpustakaan\resources\views/admin/databuku/view.blade.php ENDPATH**/ ?>