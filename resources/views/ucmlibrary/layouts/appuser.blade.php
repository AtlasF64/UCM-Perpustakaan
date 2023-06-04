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
    <link href="{{ asset('css/app.css') }}" rel="stylesheet" />
    <link href="{{ asset('css/app-masthead.css') }}" rel="stylesheet" />
    {{-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" /> --}}


    <!-- Bootstrap core JS-->
    {{-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script> --}}
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    {{-- <script src="js/scripts.js"></script> --}}

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

<body class="d-flex flex-column min-vh-100">
    <nav class="navbar navbar-expand-lg navbar-dark" style="background-color:#003294;">
        <div class="container-fluid">
            {{-- <a class="nav-brand" href="{{ url('/') }}" ></a>  --}}
            <img id="logo" src="{{ asset('img/fotowebsite/logoucm.png') }}" alt="" style="max-width: 10%">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                <ul class="navbar-nav ms-auto me-3 me-lg-4">
                    <li class="nav-item {{ Request::is('/') ? 'active' : '' }}"><a class="nav-link" aria-current="page"
                            href="{{ url('/') }}">Home</a></li>
                    <li class="nav-item {{ Request::is('books') || Request::is('books/*') ? 'active' : '' }}"><a
                            href="{{ url('/books?judul=') }}" class="nav-link">Books</a></li>
                    <!--<li class="nav-item"><a class="nav-link" href="{{ url('/about') }}">About</a></li>

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



                    @if (Route::has('login'))

                        @auth
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('logout') }}"
                                    onclick="event.preventDefault();
                                         document.getElementById('logout-form').submit();">
                                    {{ __('Logout') }}
                                </a>
                                <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                    @csrf
                                </form>


                            </li>
                        @else
                            <li class="nav-item {{ Request::is('login') ? 'active' : '' }}">
                                <a class="nav-link" href="{{ url('login') }}">Login</a>
                            </li>
                            <li class="nav-item {{ Request::is('register') ? 'active' : '' }}">
                                @if (Route::has('register'))
                                    <a class="nav-link" href="{{ url('register') }}">Register</a>
                                @endif
                            </li>
                        @endauth
                    @endif
                </ul>
                {{-- <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form> --}}
            </div>
        </div>
    </nav>
    {{-- <nav class="navbar navbar-light bg-light static-top">
        <div class="container">
            <a class="navbar-brand" href="#!">Start Bootstrap</a>
            <a class="btn btn-primary" href="#signup">Sign Up</a>
        </div>
    </nav> --}}
    {{-- <nav id="nav-ucm" class="navbar navbar-expand-lg navbar-dark static">
        <a class="navbar-brand" href="https://ucmcampus.ac.id/">
           
        </a>
        <button class="navbar-toggler ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            
            <ul class="navbar-nav ml-auto">
                <li class="nav-item {{Request::is('/') ? 'active' : ''}}"><a class="nav-link" aria-current="page" href="{{ url('/') }}">Home</a></li>
                <li class="nav-item {{Request::is('books') || Request::is('books/*') ? 'active' : ''}}"><a href="{{ url('/books?judul=') }}" class="nav-link">Books</a></li>
                <!--<li class="nav-item"><a class="nav-link" href="{{ url('/about') }}">About</a></li>

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



                @if (Route::has('login'))
                   
                    @auth
                        <li class="nav-item">
                            <a class="nav-link" href="{{ route('logout') }}"
                                    onclick="event.preventDefault();
                                         document.getElementById('logout-form').submit();">
                                    {{ __('Logout') }}
                                </a>
                             <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                 @csrf
                            </form>

                            
                        </li>

                    @else
                        <li class="nav-item {{Request::is('login') ? 'active' : ''}}">
                            <a class="nav-link" href="{{ url('login') }}">Login</a>
                        </li>
                        <li class="nav-item {{Request::is('register') ? 'active' : ''}}">
                            @if (Route::has('register'))
                                <a class="nav-link" href="{{ url('register') }}">Register</a>
                            @endif
                        </li>
                    @endauth
                @endif
            </ul>
        </div>
    </nav> --}}

    @yield('content')

    @include('ucmlibrary.layouts.ucmlibraryfooter')

</body>

</html>
