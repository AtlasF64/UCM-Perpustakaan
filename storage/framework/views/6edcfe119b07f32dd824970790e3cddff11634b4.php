<?php $__env->startSection('content'); ?>
    <script src="<?php echo e(asset('js/selectize.min.js')); ?>"></script>
    <div class="container" style="padding:20px;padding-top:75px">
        <h2 class="tengah">Tambah Data Buku</h2>
        <?php if(Session::has('message_success')): ?>
        <div id="message-success" class="message-success" style="margin:4px">
            <?php echo Session::get('message_success'); ?>
        </div>
        <?php endif;?>
        <?php if(Session::has('message_failed')): ?>
        <div id="message-failed" class="message-failed" style="margin:4px">
            <?php echo Session::get('message_failed'); ?>
        </div>
        <?php endif;?>
        <div class="row">
            <form class="form-horizontal" enctype="multipart/form-data" style="padding:20px" role="form" method="POST"
                action="<?php echo e(url('databuku')); ?>">
                <input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">
                <div class="form-group">
                    <label id="kodebuku" class="col-md-4 control-label">Kode Buku <font style="color:red">*</font></label>
                    <div class="col-md-6">
                        <input type="text" id="kodebuku" class="form-control" name="kodebuku" maxlength="12" required
                            value="<?php echo e(old('kodebuku')); ?>" />
                    </div>
                </div>
                <div class="form-group">
                    <label id="kategoribuku" class="col-md-4 control-label">Kategori Buku <font style="color:red">*</font>
                    </label>
                    <div class="col-md-6">
                        <select id="kategoribuku" name="kategoribuku" class="form-control" required>
                            
                            <option value="" selected disabled hidden>Pilih Kategori</option>
                            <?php $__currentLoopData = $datakategoribuku; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <option value="<?php echo e($value->id_kategoribuku); ?>"
                                    <?php echo e(old('kategoribuku') == $value->id_kategoribuku ? 'selected' : ''); ?>>
                                    <?php echo e($value->kategoribuku); ?>

                                </option>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </select>
                    </div>
                </div>
                
                <div class="form-group">
                    <label id="rakbuku" class="col-md-4 control-label">Rak Buku <font style="color:red">*</font></label>
                    <div class="col-md-6">
                        <select id="rakbuku" name="rakbuku" class="form-control">
                            
                            <option value="" selected disabled hidden>Pilih Kategori</option>
                            <?php $__currentLoopData = $datarakbuku; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <option value="<?php echo e($value->id_rakbuku); ?>"
                                    <?php echo e(old('rakbuku') == $value->id_rakbuku ? 'selected' : ''); ?>>
                                    <?php echo e($value->rakbuku); ?>

                                </option>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label id="judulbuku" class="col-md-4 control-label">Judul Buku <font style="color:red">*</font></label>
                    <div class="col-md-6">
                        <textarea id="judulbuku" class="form-control" name="judulbuku" required><?php echo e(old('judulbuku')); ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label id="author" class="col-md-4 control-label">Author <font style="color:red">*</font></label>
                    <div class="col-md-6">
                        <textarea required id="author" class="form-control" name="author"><?php echo e(old('author')); ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label id="publisher" class="col-md-4 control-label">Publisher <font style="color:red">*</font></label>
                    <div class="col-md-6">
                        <textarea required id="publisher" class="form-control" name="publisher"><?php echo e(old('publisher')); ?></textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label id="kota" class="col-md-4 control-label">Kota <font style="color:red">*</font></label>
                    <div class="col-md-6">
                        <input required type="text" id="kota" class="form-control" name="kota" maxlength="30"
                            value="<?php echo e(old('kota')); ?>" />
                    </div>
                </div>
                <div class="form-group">
                    <label id="tahun" class="col-md-4 control-label">Tahun <font style="color:red">*</font></label>
                    <div class="col-md-6">
                        <select required id="tahun" name="tahun" class="form-control">
                            <option value="" selected disabled hidden>Pilih Tahun</option>
                            <?php for($i = date('Y'); $i >= 1950; $i--): ?>
                                <option value="<?php echo e($i); ?>" <?php echo e(old('tahun') == $i ? 'selected' : ''); ?>>
                                    <?php echo e($i); ?>

                                </option>
                            <?php endfor; ?>

                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label id="fotocoverbuku" class="col-md-4 control-label">Upload Foto Cover Buku (optional)</label>
                    <div class="col-md-6">

                        <img src="<?php echo e(asset('img/fotocoverbuku/default.png')); ?>" class="img-responsive" />

                        <input type="file" id="fotocoverbuku" class="form-control" name="fotocoverbuku"
                            accept=".jpg,.png,.jpeg" />
                    </div>
                </div>
                <div class="form-group">
                    <label id="status_kategori" class="col-md-4 control-label">Status Kategori Buku <font
                            style="color:red">*</font></label>
                    <div class="col-md-6">
                        <select id="status_kategori" name="status_kategori" class="form-control" required="required">
                            <option value="" selected disabled hidden>Pilih Status Kategori Buku</option>
                            <option value="0" <?php echo e(old('status_kategori') == '0' ? 'selected' : ''); ?>>Mahasiswa
                            </option>
                            <option value="1" <?php echo e(old('status_kategori') == '1' ? 'selected' : ''); ?>>Dosen</option>

                        </select>
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="col-md-6 col-md-offset-4 mt-2">
                        <button id="myForm" type="submit" class="btn btn-primary" style="width:100%">
                            SUBMIT
                        </button>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-6 col-md-offset-4 mt-2">
                        <a href="<?php echo e(url('databuku')); ?>" class="btn btn-primary" style="width:100%;background-color:red">
                            KEMBALI KE DATA BUKU
                        </a>
                    </div>
                </div>
            </form>
        </div>
    </div>
<?php $__env->stopSection(); ?>



<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\ASUS\Documents\GitHub\UCM-Perpustakaan\resources\views/admin/databuku/create.blade.php ENDPATH**/ ?>