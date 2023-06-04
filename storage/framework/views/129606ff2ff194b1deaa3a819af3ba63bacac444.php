<?php $__env->startSection('content'); ?>

<!-- Masthead-->
<header class="masthead">
    <div class="container position-relative">
        <div class="row justify-content-center">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">UCM LIBRARY</h1>
                    <p class="lead fw-normal text-white-50 mb-0">Pusat Informasi Ketersediaan Buku di Perpustakaan UCM</p>
                    <form action="<?php echo e(url('books')); ?>">
                        <div class="input-group mb-3 mt-5">
                           
                            <input type="text" class="form-control mx-2" placeholder="Membangun Aplikasi dengan Android Flutter" name="judul"
                                aria-describedby="basic-addon2" required="required">
                            <div class="input-group-append">
                                <button class="btn btn-secondary text-white" type="submit">Search</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</header>
 <section class="py-5" style="background-color: ">
    <center>
        <h2><b>Kumpulan Buku Terbaru</b></h2>
    </center>
    <div id="carouselExampleControls" class="carousel slide" data-ride="false">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <div id="bookcontainerouter" class="carousel slide container px-4 px-lg-5 mt-5">
                <div id="bookcontainerinner" class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">

                    <?php $i = 1;?>
                    <?php $__currentLoopData = $newbook; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php echo $__env->make('include.kotakbuku', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    
                    <?php 
                    $i++;
                    unset($newbook[$key]);
                    if($i > 3)
                        break;
                    ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>   
                </div>
            </div>
          </div>
          <div class="carousel-item">
            <div id="bookcontainerouter" class="carousel slide container px-4 px-lg-5 mt-5">
                <div id="bookcontainerinner" class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <?php $i = 1;?>
                    <?php $__currentLoopData = $newbook; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php echo $__env->make('include.kotakbuku', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <?php 
                    $i++;
                    unset($newbook[$key]);
                    if($i > 3)
                        break;
                    ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>     
                </div>
            </div>
          </div>
          <div class="carousel-item">
            <div id="bookcontainerouter" class="carousel slide container px-4 px-lg-5 mt-5">
                <div id="bookcontainerinner" class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <?php $i = 1;?>
                    <?php $__currentLoopData = $newbook; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $key => $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <?php echo $__env->make('include.kotakbuku', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?>
                    <?php 
                    $i++;
                    unset($newbook[$key]);
                    if($i > 3)
                        break;
                    ?>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>   
                </div>
            </div>
          </div>
        </div>
        <?php echo e($newbook); ?>

        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev" >
            <span class="carousel-control-prev-icon" aria-hidden="true" style="color: black"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only"><i class="fa-solid fa-arrow-right"></i></span>
          </a>



    
    <!--<center>
        <h2><b>Top 3 Buku Yang Sering Dipinjam</b></h2>
    </center>
    <div id="bookcontainerouter" class="carousel slide container px-4 px-lg-5 mt-5">
        <div id="bookcontainerinner" class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
            <div class="col mb-5">
                <div class="card h-100">
                    <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
                        alt="..." />
                    <div class="card-body p-4">
                        <div class="text-center">
                            <h5 class="fw-bolder">Fancy Product</h5>
                            $40.00 - $80.00
                        </div>
                    </div>
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                        <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View
                                options</a></div>
                    </div>
                </div>
            </div>
            <div class="col mb-5">
                <div class="card h-100">
                    <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale
                    </div>
                    <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
                        alt="..." />
                    <div class="card-body p-4">
                        <div class="text-center">
                            <h5 class="fw-bolder">Special Item</h5>
                            <div class="d-flex justify-content-center small text-warning mb-2">
                                <div class="bi-star-fill"></div>
                                <div class="bi-star-fill"></div>
                                <div class="bi-star-fill"></div>
                                <div class="bi-star-fill"></div>
                                <div class="bi-star-fill"></div>
                            </div>
                            <span class="text-muted text-decoration-line-through">$20.00</span>
                            $18.00
                        </div>
                    </div>
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                        <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to
                                cart</a></div>
                    </div>
                </div>
            </div>
            <div class="col mb-5">
                <div class="card h-100">
                    <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">
                        Sale</div>
                    <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg"
                        alt="..." />
                    <div class="card-body p-4">
                        <div class="text-center">
                            <h5 class="fw-bolder">Sale Item</h5>
                            <span class="text-muted text-decoration-line-through">$50.00</span>
                            $25.00
                        </div>
                    </div>
                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                        <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to
                                cart</a></div>
                    </div>
                </div>
            </div>   
        </div>
    </div>-->
    <center>
        <a href="<?php echo e(url('books?judul=')); ?>" class="btn btn-primary">Lihat Selengkapnya</a>
    </center>
</section>

<?php $__env->stopSection(); ?>
<?php echo $__env->make('ucmlibrary.layouts.appuser', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\ASUS\Documents\GitHub\UCM-Perpustakaan\resources\views/ucmlibrary/ucmlibrary.blade.php ENDPATH**/ ?>