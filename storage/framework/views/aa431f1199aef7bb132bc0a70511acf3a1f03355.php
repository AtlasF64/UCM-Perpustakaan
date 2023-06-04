<?php $__env->startSection('content'); ?>
    <div class="container-fluid px-4">
        <h1 class="mt-4">Seluruh Data Buku</h1>
        <div class="card mb-6">
            <div class="card-header">
                <i class="fas fa-table me-1"></i>
                Daftar Buku
                <a href="<?php echo e(url('databuku')); ?>/create" type="button" class="btn btn-primary" style="float: right">Tambah
                    Buku</a>
            </div>
            <div>
                <?php if(Session::has('message_success')): ?>
                <div class="message-success" style="margin: 1rem; float:left;">
                    <?php echo Session::get('message_success'); ?>
                </div>
                <?php endif;?>
                <?php if(Session::has('message_failed')): ?>
                <div class="message-failed" style="margin: 1rem; float:left;">
                    <?php echo Session::get('message_failed'); ?>
                </div>
                <?php endif;?>
            </div>
            

            <div class="card-body">
                <table id="example" class="table table-striped">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Kode Buku</th>
                            <th>Judul Buku</th>
                            <th>Kategori Buku</th>
                            <th >Author</th>
                            <th>Publisher</th>
                            <th>Tahun</th>
                            <th>Status Kategori</th>
                            <th>Status Buku</th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $i = 1; ?>
                        <?php $__currentLoopData = $databuku; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                            <tr>
                                <td><?php echo $i; ?></td>
                                <td><?php echo e($value->kodebuku); ?></td>
                                <td><?php echo e($value->judulbuku); ?></td>
                                <td><?php echo e($value->kategoribuku); ?></td>
                                <td><?php echo e($value->author); ?></td>
                                <td><?php echo e($value->publisher); ?></td>
                                <td><?php echo e($value->tahun); ?></td>
                                <td><?php echo $__env->make('include/statuskategori', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?></td>
                                <td><?php echo $__env->make('include/statuspeminjaman', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?></td>
                                <td>


                                    <div class="dropdown">
                                        <i class="btn fa-solid fa-ellipsis dropdown-toggle" data-bs-toggle="dropdown"
                                            href="#exampleModalToggle" role="button" aria-expanded="false"></i>
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item"
                                                    href="<?php echo e(url('databuku')); ?>/<?php echo e($value->id_buku); ?>"><i class="fa fa-eye"></i> View Detail
                                                </a>
                                            </li>
                                            <li><a class="dropdown-item"
                                                    href="<?php echo e(url('databuku')); ?>/<?php echo e($value->id_buku); ?>/edit"><i class="fa fa-edit"></i> Edit
                                                </a>
                                            </li>
                                            <li>
                                                <a type="button" class="dropdown-item" data-bs-toggle="modal"
                                                    data-bs-target="#exampleModal<?php echo e($value->id_buku); ?>"><i class="fa fa-trash"></i> Delete
                                                </a>
                                            </li>
                                        </ul>
                                    </div>

                                </td>
                                
                                <td>
                                    <!-- Button trigger modal -->
                                    

                                    <!-- Modal -->
                                    <div class="modal fade" id="exampleModal<?php echo e($value->id_buku); ?>" tabindex="-1"
                                        aria-labelledby="exampleModalLabel<?php echo e($value->id_buku); ?>" aria-hidden="true">
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
                                                        action="<?php echo e(url('databuku')); ?>/<?php echo e($value->id_buku); ?>"
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
    </div>
<?php $__env->stopSection(); ?>




<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\ASUS\Documents\GitHub\UCM-Perpustakaan\resources\views/admin/databuku/index.blade.php ENDPATH**/ ?>