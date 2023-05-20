<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>UCM Library - Pusat Peminjaman Buku di Perpustakaan UCM</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Bootstrap icons-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="<?php echo e(asset('css/app.css')); ?>" rel="stylesheet" />
    

    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
        integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
        integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
        integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous">
    </script>
</head>
    <nav id="nav-ucm" class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="https://ucmcampus.ac.id/">
            <img id="logo" src="<?php echo e(asset('img/fotowebsite/logoucm.png')); ?>" alt="">
        </a>
        <button class="navbar-toggler ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        
        
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            
            <ul class="navbar-nav ml-auto">
                <li class="nav-item <?php echo e(Request::is('/') ? 'active' : ''); ?>"><a class="nav-link" aria-current="page" href="<?php echo e(url('/')); ?>">Home</a></li>
                <li class="nav-item <?php echo e(Request::is('books') || Request::is('books/*') ? 'active' : ''); ?>"><a href="<?php echo e(url('/books?judul=')); ?>" class="nav-link">Books</a></li>
                <!--<li class="nav-item"><a class="nav-link" href="<?php echo e(url('/about')); ?>">About</a></li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button"
                        data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">All Books</a></li>
                        <li>
                            <hr class="dropdown-divider"/>
                        </li>
                        <li><a class="dropdown-item" href="#!">Popular Items</a></li>
                        <li><a class="dropdown-item" href="#!">New Arrivals</a></li>
                    </ul>
                </li> -->



                <?php if(Route::has('login')): ?>
                   
                    <?php if(auth()->guard()->check()): ?>
                        <li class="nav-item">
                            <a class="nav-link" href="<?php echo e(route('logout')); ?>"
                                    onclick="event.preventDefault();
                                         document.getElementById('logout-form').submit();">
                                    <?php echo e(__('Logout')); ?>

                                </a>
                             <form id="logout-form" action="<?php echo e(route('logout')); ?>" method="POST" class="d-none">
                                 <?php echo csrf_field(); ?>
                            </form>

                            
                        </li>

                    <?php else: ?>
                        <li class="nav-item <?php echo e(Request::is('login') ? 'active' : ''); ?>">
                            <a class="nav-link" href="<?php echo e(url('login')); ?>">Login</a>
                        </li>
                        <li class="nav-item <?php echo e(Request::is('register') ? 'active' : ''); ?>">
                            <?php if(Route::has('register')): ?>
                                <a class="nav-link" href="<?php echo e(url('register')); ?>">Register</a>
                            <?php endif; ?>
                        </li>
                    <?php endif; ?>
                <?php endif; ?>
            </ul>
        </div>
    </nav>

    <?php echo $__env->yieldContent('content'); ?>

    <!-- Footer-->
    <footer id="footer" class="py-5 bg-dark">
        <div class="container">
            <p class="m-0 text-center text-white">Copyright &copy; UCM Campus 2023</p>
        </div>
    </footer>

    

</body>

</html>
<?php /**PATH C:\xampp\htdocs\perpustakaan\resources\views/ucmlibrary/layouts/appuser.blade.php ENDPATH**/ ?>