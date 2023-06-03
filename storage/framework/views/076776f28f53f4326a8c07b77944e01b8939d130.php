<?php $__env->startSection('content'); ?>
    <div class="container" style="padding:20px;padding-top:75px">
        <h2 class="tengah">Ubah Data Buku</h2>
        <?php if(Session::has('message_success')): ?>
        <div class="message-success" style="margin:4px">
            <?php echo Session::get('message_success'); ?>
        </div>
        <?php endif;?>
        <?php if(Session::has('message_failed')): ?>
        <div class="message-failed" style="margin:4px">
            <?php echo Session::get('message_failed'); ?>
        </div>
        <?php endif;?>
        <div class="row">
            <form class="form-horizontal" role="form" enctype="multipart/form-data" method="POST"
                action="<?php echo e(url('databuku')); ?>/<?php echo e($databuku->id_buku); ?>" style="padding:20px">
                <input name="_method" type="hidden" value="PUT">
                <input type="hidden" name="_token" value="<?php echo e(csrf_token()); ?>">

                <div class="form-group">
                    <label id="kodebuku" class="col-md-4 control-label">Kode Buku <font style="color:red">*</font></label>
                    <div class="col-md-6">
                        <input type="text" id="kodebuku" class="form-control" name="kodebuku" maxlength="12"
                            value="<?php echo e($databuku->kodebuku); ?>"/>
                    </div>
                </div>

                <div class="form-group">
                    <label id="kategoribuku" class="col-md-4 control-label">Kategori Buku <font style="color:red">*</font>
                        </label>
                    <div class="col-md-6">
                        <select id="kategoribuku" name="kategoribuku" class="form-control">
                            <option value="<?php echo e($databuku->kategoribuku); ?>" selected></option>
                            <?php $__currentLoopData = $datakategoribuku; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <option value="<?php echo e($value->id_kategoribuku); ?>" <?php if($value->id_kategoribuku == $databuku->id_kategoribuku) echo 'selected';?>><?php echo e($value->kategoribuku); ?></option> 
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </select>
                    </div>
                </div>
                
                <div class="form-group">
                    <label id="rakbuku" class="col-md-4 control-label">Rak Buku <font style="color:red">*</font>
                        </label>
                    <div class="col-md-6">
                        <select id="rakbuku" name="rakbuku" class="form-control">
                            <option value="<?php echo e($databuku->rakbuku); ?>" selected></option>
                            <?php $__currentLoopData = $datarakbuku; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <option value="<?php echo e($value->id_rakbuku); ?>" <?php if($value->id_rakbuku == $databuku->id_rakbuku) echo 'selected';?>><?php echo e($value->rakbuku); ?></option> 
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label id="judulbuku" class="col-md-4 control-label">Judul Buku <font style="color:red">*</font></label>
                    <div class="col-md-6">
                        <textarea id="judulbuku" class="form-control" name="judulbuku" required><?php echo e($databuku->judulbuku); ?></textarea>
                    </div>
                </div>

                <div class="form-group">
                    <label id="author" class="col-md-4 control-label">Author <font style="color:red">*</font></label>
                    <div class="col-md-6">
                        <textarea id="author" class="form-control" name="author" required><?php echo e($databuku->author); ?></textarea>
                    </div>
                </div>

                <div class="form-group">
                    <label id="publisher" class="col-md-4 control-label">Publisher <font style="color:red">*</font></label>
                    <div class="col-md-6">
                        <textarea id="publisher" class="form-control" name="publisher" required><?php echo e($databuku->publisher); ?></textarea>
                    </div>
                </div>

                <div class="form-group">
                    <label id="kota" class="col-md-4 control-label">Kota <font style="color:red">*</font></label>
                    <div class="col-md-6">
                        <input type="text" id="kota" class="form-control" name="kota" maxlength="30"
                            value="<?php echo e($databuku->kota); ?>" required />
                    </div>
                </div>

                <div class="form-group">
                    <label id="tahun" class="col-md-4 control-label">Tahun <font style="color:red">*</font></label>
                    <div class="col-md-6">
                        <select id="tahun" name="tahun" class="form-control" required="required">
                            <option value="" selected disabled hidden><?php echo e($databuku->tahun); ?></option>
                            <?php for($i = date('Y'); $i >= 1950; $i--): ?>
                                <option value="<?php echo e($i); ?>" <?php if($i == $databuku->tahun) echo 'selected'?>><?php echo e($i); ?></option>
                            <?php endfor; ?>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label id="fotocoverbuku" class="col-md-4 control-label">Upload Foto Cover Buku</label>
                    <div class="col-md-6">
                         <img src="<?php echo e(asset('img/fotocoverbuku')); ?>/<?php echo e($databuku->fotocoverbuku); ?>" style="width:120px" />
                         <br>
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
                            <option value="0" <?php if($databuku->status_kategori == "0") echo "selected"?>>Mahasiswa</option>
                            <option value="1" <?php if($databuku->status_kategori == "1") echo "selected"?>>Dosen</option>
                            <option value="2" <?php if($databuku->status_kategori == "2") echo "selected"?>>Skripsi</option>
                        </select>
                    </div>
                </div>

                 <div class="form-group">
                    <label id="status_buku" class="col-md-4 control-label">Status Buku <font
                            style="color:red">*</font></label>
                    <div class="col-md-6">
                        <select id="status_buku" name="status_kategori" class="form-control" required="required">
                            <option value="" selected disabled hidden>Pilih Status Buku</option>
                            <option value="0" <?php if($databuku->status_buku == "0") echo "selected"?>>Tersedia</option>
                            <option value="2" <?php if($databuku->status_buku == "2") echo "selected"?>>Tidak Tersedia</option>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-6 col-md-offset-4">
                        <button type="submit" class="btn btn-primary" style="width:100%">
                            SUBMIT
                        </button>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-6 col-md-offset-4">
                        <a href="<?php echo e(url('databuku')); ?>" class="btn btn-primary" style="width:100%;background-color:red">
                            KEMBALI KE DATA BUKU
                        </a>
                    </div>
                </div>
            </form>
        </div>
    </div>
<?php $__env->stopSection(); ?>
<?php $__env->startSection('datatable'); ?>
<script src="<?php echo e(asset('js/selectize.min.js')); ?>"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('select').selectize({

            onFocus: function (){
                category = this.getValue();
                this.clear(true);
            },
            onBlur:function () {
                if(this.getValue().length == 0 && this.getValue() != category){
                    this.setValue(category);
                }
            }

        });
    });
</script>
<?php $__env->stopSection(); ?>

<?php echo $__env->make('layouts.app', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\ASUS\Documents\GitHub\UCM-Perpustakaan\resources\views/admin/databuku/edit.blade.php ENDPATH**/ ?>