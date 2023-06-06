<div class="col-md-4" style="margin-top:20px">
    <div class="card h-100" >
        <!-- Product image-->
        <?php if(is_null($value->fotocoverbuku)): ?>
        <img src="<?php echo e(asset('img/fotocoverbuku/default.png')); ?>" class="img-responsive"/>
        <?php else: ?>
        <img src="<?php echo e(asset('img/fotocoverbuku')); ?>/<?php echo e($value->fotocoverbuku); ?>" class="img-responsive"/>
        <?php endif; ?>
        
        
        <!-- Product details-->
        <div class="card-body p-4">
            <div class="text-center" style="height:80px">
                <!-- Product name-->
                <h5 class="fw-bolder"><b><?php echo e($value->judulbuku); ?></b></h5>
                <!-- Product price-->
            </div>
            <hr>
            
            <h6><b>Kategori:</b> <?php echo e($value->kategoribuku); ?></h6>
            <h6><b>Pengarang:</b> <?php echo e($value->author); ?></h6>
            <h6><b>Tahun:</b> <?php echo e($value->tahun); ?></h6>
            <h6><b>Status:</b> <?php echo $__env->make('include/statuspeminjaman', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?></h6>
        </div>
        <!-- Product actions-->
        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
            <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="<?php echo e(url('books')); ?>/<?php echo e($value->id_buku); ?>">Lihat Detail Buku</a></div>
        </div>
    </div>
</div><?php /**PATH C:\Users\ASUS\Documents\GitHub\UCM-Perpustakaan\resources\views/include/kotakbukudua.blade.php ENDPATH**/ ?>