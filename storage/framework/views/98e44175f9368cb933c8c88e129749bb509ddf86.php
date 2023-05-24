

<?php $__env->startSection('content'); ?>
<div class="container">
    <form action="">
        <div cass="row" style="padding-top:20px">
            <div class="col-4"  style="float:left">
                <input type="text" name="judul" class="form-control" placeholder="Masukkan Judul Buku" value="<?php echo e($_GET['judul']); ?>">
            </div>
            <div class="col-3" style="float:left">
                <button type="submit" class="btn btn-primary" style="width:100%">CARI</button>
            </div>
        </div>
    </form>
    <div class="row" style="padding:30px;clear:both">
        <?php $__currentLoopData = $databuku; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
        <?php echo $__env->make('include.kotakbukudua', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>  
    </div>
    <center>
        <?php echo e($databuku->appends($_GET)->links()); ?>

    </center>
    
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('ucmlibrary.layouts.appuser', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\ASUS\Documents\GitHub\UCM-Perpustakaan\resources\views/ucmlibrary/books.blade.php ENDPATH**/ ?>