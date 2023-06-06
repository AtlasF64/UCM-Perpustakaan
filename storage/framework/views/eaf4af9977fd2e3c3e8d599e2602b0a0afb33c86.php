<?php $__env->startSection('content'); ?>
        
                <div class="container-fluid px-4">
                    <h1 class="mt-4">Dashboard Perpustakaan UCM</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item active">Rangkuman</li>
                    </ol>
                    <div class="row">
                        
                        <div id="buku-view" class="col-xl-2 col-md-6">
                            <div class="card bg-warning text-white mb-4">
                                <div class="card-body">Total Buku
                                    <span class="count-numbers"><?php echo e($buku); ?></span>
                                </div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="<?php echo e(url('databuku')); ?>">Lihat Detail</a>
                                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                </div>
                            </div>
                        </div>
                        <div id="Peminjaman-view" class="col-xl-2 col-md-6">
                            <div class="card bg-success text-white mb-4">
                                <div class="card-body">Peminjaman
                                    <span class="count-numbers"><?php echo e($peminjaman); ?></span>
                                </div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="<?php echo e(url('datapeminjaman')); ?>">Lihat Detail</a>
                                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                </div>
                            </div>
                        </div>
                        <div id="Pemgembalian-view" class="col-xl-2 col-md-6">
                            <div class="card bg-danger text-white mb-4">
                                <div class="card-body">Pemgembalian
                                    <span class="count-numbers"><?php echo e($pengembalian); ?></span>
                                </div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="<?php echo e(url('datapengembalian')); ?>">Lihat Detail</a>
                                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                </div>
                            </div>
                        </div>
                        <div id="Member-view"class="col-xl-2 col-md-6">
                            <div class="card bg-primary text-white mb-4">
                                <div class="card-body">Total Member
                                    <span class="count-numbers"> <?php echo e($member); ?></span>
                                </div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="<?php echo e(url('informasiuser')); ?>">Lihat Detail</a>
                                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="card mb-4">
                        <div class="card-header">
                            <i class="fas fa-table me-1"></i>
                            Daftar Peminjaman
                        </div>
                        <div class="card-body">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th style="width:30px">No</th>
                                        <th>Kode Peminjaman</th>
                                        <th>Tanggal Peminjaman</th>
                                        <th>Peminjam/Member</th>
                                        <th>Tanggal Jatuh Tempo</th>
                                        <th>Status</th>
                                        <th></th>
                                        <th></th>
                                    </tr>
                                </thead>
                                
                                <tbody>
                                    <?php $i = 1; ?>

                                    <?php $__currentLoopData = $datapeminjaman; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <?php if(date('Y-m-d') <= date('Y-m-d', strtotime('+7 day', strtotime($value->tanggalpeminjaman)))): ?>
                                            <tr>
                                            <?php else: ?>
                                                <?php if($value->tanggalpengembalian != ''): ?>
                                            <tr>
                                            <?php else: ?>
                                            <tr style="background-color:yellow">
                                        <?php endif; ?>
                                    <?php endif; ?>
                                    <td><?php echo $i; ?></td>
                                    <td><?php echo e($value->kode_peminjaman); ?></td>
                                    <td><?php echo e(date('l, d M Y', strtotime($value->tanggalpeminjaman))); ?></td>
                                    <td><?php echo e($value->name); ?></td>
                                    <td><?php echo e(date('l, d M Y', strtotime('+7 day', strtotime($value->tanggalpeminjaman)))); ?>

                                    </td>
                                    <td>
                                        <?php echo $__env->make('include.statustransaksipeminjaman', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                                    </td>
                                    <td style="text-align:right">
                                        <a href="<?php echo e(url('datapeminjaman')); ?>/<?php echo e($value->id_peminjaman2); ?>"
                                            style="color:skyblue"><i class="fa fa-eye"></i></a>
                                    </td>
                                    <td>
                                        
                                    </td>
                                    </tr>
                                    <?php $i++; ?>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
            </main>
            <?php $__env->stopSection(); ?>
           


<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\ASUS\Documents\GitHub\UCM-Perpustakaan\resources\views/admin/home.blade.php ENDPATH**/ ?>