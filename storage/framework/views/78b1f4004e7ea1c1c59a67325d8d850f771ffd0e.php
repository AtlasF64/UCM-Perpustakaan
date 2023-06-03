

<?php $__env->startSection('content'); ?>
    <div class="container-fluid px-4">
        <h1 class="mt-4">Transaksi Buku</h1>
        <div class="card mb-6">
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item" role="presentation">
                    <button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home" type="button"
                        role="tab" aria-controls="home" aria-selected="true">Data Peminjaman</button>
                </li>
                <li class="nav-item" role="presentation">
                    <button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile" type="button"
                        role="tab" aria-controls="profile" aria-selected="false">Data Pengembalian</button>
                </li>
                
                <li class="nav-item">

                </li>
            </ul>


            <div class="tab-content" id="myTabContent">
                <div style="margin-left: 50px; float:left;">
                    <?php if(Session::has('message_success')): ?>
                    <div class="message-success" style="margin:-20px;margin-top:20px;margin-bottom:20px">
                        <?php echo Session::get('message_success'); ?>
                    </div>
                    <?php endif;?>
                    <?php if(Session::has('message_failed')): ?>
                    <div class="message-failed" style="margin:-20px;margin-top:20px;margin-bottom:20px">
                        <?php echo Session::get('message_failed'); ?>
                    </div>
                    <?php endif;?>
                </div>
                
                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">

                    <a href="<?php echo e(url('datatransaksi/datapeminjaman')); ?>/create" class="btn btn-primary"
                        style="float: right; margin-right: 1rem; margin-top: 1rem; margin-top: 1rem;">Tambah Data
                        Peminjaman</a>

                    <br>
                    <br>

                    <div class="card-body">

                        <table id="example" class="table table-striped" style="width:100%">
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
                                    <a href="<?php echo e(url('datatransaksi/datapeminjaman')); ?>/<?php echo e($value->id_peminjaman2); ?>"
                                        style="color:skyblue"><i class="fa fa-eye"></i></a>
                                </td>
                                <td style="text-align:right">
                                    <a href="<?php echo e(url('datatransaksi/datapeminjaman')); ?>/<?php echo e($value->id_peminjaman2); ?>/edit"
                                        style="color:green"><i class="fa fa-edit"></i></a>
                                </td>
                                <td>
                                    <!-- Button trigger modal -->
                                    <a type="button" class="btn" data-bs-toggle="modal"
                                        data-bs-target="#exampleModal<?php echo e($value->id_peminjaman); ?>">
                                        <i class="fa fa-trash"></i>
                                    </a>

                                    <!-- Modal -->
                                    <div class="modal fade" id="exampleModal<?php echo e($value->id_peminjaman); ?>" tabindex="-1"
                                        aria-labelledby="exampleModalLabel<?php echo e($value->id_peminjaman); ?>" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Hapus Data Buku
                                                    </h1>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                        aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <p>Apakah Anda Yakin Akan Menghapus Data Buku?</p>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary"
                                                        data-bs-dismiss="modal">Tidak</button>
                                                    <form method="POST"
                                                        action="<?php echo e(url('datatransaksi/datapeminjaman')); ?>/<?php echo e($value->id_peminjaman2); ?>"
                                                        accept-charset="UTF-8">
                                                        <input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
                                                        <input name="_method" type="hidden" value="DELETE">
                                                        <button type="submit" class="btn btn-danger">Hapus</button>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </td>
                                </tr>
                                <?php $i++; ?>
                                <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            </tbody>
                        </table>
                    </div>

                </div>
                
                <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                    <div>
                        <div>
                            <a href="<?php echo e(url('datatransaksi/datapengembalian')); ?>/create"
                                class="btn btn-primary"style="float: right; margin-right: 1rem; margin-top: 1rem; margin-top: 1rem;">Tambah
                                Data
                                Pengembalian</a>
                        </div>
                        <br>
                        <br>
                        <div class="card-body">
                           
                            <table id="example" class="table table-striped" style="width:100%">
                                <thead>
                                    <tr>
                                        <th style="width:30px">No</th>
                                        <th>Kode Pengembalian</th>
                                        <th>Kode Peminjaman</th>
                                        <th>Tanggal Pengembalian</th>
                                        <th>Peminjam/Member</th>
                                        <th>Jumlah Denda Yang Dibayar</th>
                                        <th>Catatan</th>
                                        <th></th>
                                        <th></th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $i = 1; ?>

                                    <?php $__currentLoopData = $datapengembalian; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                        <tr>
                                            <td><?php echo $i; ?></td>
                                            <td><?php echo e($value->kode_pengembalian); ?></td>
                                            <td><?php echo e($value->kode_peminjaman); ?></td>
                                            <td><?php echo e(date('l, d M Y', strtotime($value->tanggalpengembalian))); ?></td>
                                            <td><?php echo e($value->name); ?></td>
                                            <td>Rp <?php echo e(number_format($value->jumlahdenda, 0)); ?></td>
                                            <td>
                                                <?php echo e($value->catatanpengembalian); ?>

                                            </td>
                                            <td style="text-align:right">
                                                <a href="<?php echo e(url('datatransaksi/datapeminjaman')); ?>/<?php echo e($value->id_peminjaman); ?>#pengembalian"
                                                    style="color:skyblue"><i class="fa fa-eye"></i></a>
                                            </td>
                                            <td style="text-align:right">
                                                <a href="<?php echo e(url('datatransaksi/datapengembalian')); ?>/<?php echo e($value->id_pengembalian); ?>/edit"
                                                    style="color:green"><i class="fa fa-edit"></i></a>
                                            </td>
                                            <td>
                                                <!-- Button trigger modal -->
                                                <a type="button" class="btn" data-bs-toggle="modal"
                                                    data-bs-target="#exampleModal<?php echo e($value->id_pengembalian); ?>">
                                                    <i class="fa fa-trash"></i>
                                                </a>

                                                <!-- Modal -->
                                                <div class="modal fade" id="exampleModal<?php echo e($value->id_pengembalian); ?>"
                                                    tabindex="-1"
                                                    aria-labelledby="exampleModalLabel<?php echo e($value->id_pengembalian); ?>"
                                                    aria-hidden="true">
                                                    <div class="modal-dialog">
                                                        <div class="modal-content">
                                                            <div class="modal-header">
                                                                <h1 class="modal-title fs-5" id="exampleModalLabel">Hapus
                                                                    Data Buku
                                                                </h1>
                                                                <button type="button" class="btn-close"
                                                                    data-bs-dismiss="modal" aria-label="Close"></button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <p>Apakah Anda Yakin Akan Menghapus Data Buku?</p>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-secondary"
                                                                    data-bs-dismiss="modal">Tidak</button>
                                                                <form method="POST"
                                                                    action="<?php echo e(url('datatransaksi/datapengembalian')); ?>/<?php echo e($value->id_pengembalian); ?>"
                                                                    accept-charset="UTF-8">
                                                                    <input type="hidden" name="_token"
                                                                        value="<?php echo e(csrf_token()); ?>">
                                                                    <input name="_method" type="hidden" value="DELETE">
                                                                    <button type="submit"
                                                                        class="btn btn-danger">Hapus</button>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                        <?php $i++; ?>
                                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>
                
            </div>

        </div>
    </div>
<?php $__env->stopSection(); ?>


<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\ASUS\Documents\GitHub\UCM-Perpustakaan\resources\views/admin/datatransaksi/index.blade.php ENDPATH**/ ?>