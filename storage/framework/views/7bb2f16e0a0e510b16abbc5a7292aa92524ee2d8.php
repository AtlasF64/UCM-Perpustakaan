<?php $__env->startSection('content'); ?>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-3">
          <div class="card-counter primary">
            <i class="fa fa-code-fork"></i>
            <span class="count-numbers"><?php echo e($kategori); ?></span>
            <span class="count-name">Kategori Buku</span>
          </div>
        </div>

        <div class="col-md-3">
          <div class="card-counter danger">
            <i class="fa fa-book"></i>
            <span class="count-numbers"><?php echo e($buku); ?></span>
            <span class="count-name">Buku</span>
          </div>
        </div>

        <div class="col-md-3">
          <div class="card-counter success">
            <i class="fa fa-database"></i>
            <span class="count-numbers"><?php echo e($peminjaman); ?></span>
            <span class="count-name">Peminjaman</span>
          </div>
        </div>

        <div class="col-md-3">
          <div class="card-counter info">
            <i class="fa fa-users"></i>
            <span class="count-numbers"><?php echo e($member); ?></span>
            <span class="count-name">Member</span>
          </div>
        </div>
        <div class="col-md-3">
          <div class="card-counter test">
            <i class="fa fa-calendar"></i>
            <span class="count-numbers"><?php echo e($pengembalian); ?></span>
            <span class="count-name">Pengembalian</span>
          </div>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\xampp\htdocs\perpustakaan\resources\views/admin/home.blade.php ENDPATH**/ ?>