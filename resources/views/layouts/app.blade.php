@if(!Auth::guest() && Auth::user()->status_akun == "0")
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Panel | Sistem Informasi Perpustakaan UCM</title>
    <link href="{{ asset('/css/appadmin.css') }}" rel="stylesheet">
    <link href="{{ asset('/css/dataTables.bootstrap.min.css') }}" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/selectize.js/0.12.6/css/selectize.bootstrap3.min.css" integrity="sha256-ze/OEYGcFbPRmvCnrSeKbRTtjG4vGLHXgOqsyLFTRjg=" crossorigin="anonymous" />
</head>
<body>
    <div id="wrapper">
        <div class="overlay"></div>
        <nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper" role="navigation">
            <ul class="nav sidebar-nav">
                <li class="sidebar-brand">
                    <a>
                       <img src="{{asset('img/fotowebsite/logoucm.png')}}" style="margin-left:10px;width:120px" />
                    </a>
                </li>
                <li>
                    <a href="{{ url('/') }}" style="{{ Request::is('/') ? 'color:white;background-color: #34b4cf' : 'color:white' }}">Beranda</a>
                </li>
                <li>
                    <a href="{{ url('informasiuser') }}" style="{{ Request::is('informasiuser') || Request::is('informasiuser/*') ? 'color:white;background-color: #34b4cf;' : 'color:white' }}">Data Anggota User</a>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" style="{{ Request::is('databuku') || Request::is('databuku/*') || Request::is('datakategoribuku') || Request::is('datakategoribuku/*') ? 'color:white;background-color: #34b4cf;' : 'color:white' }}">Data Buku <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu" style="padding-left:15px;">
                        <li><a href="{{ url('databuku') }}" style="{{ Request::is('databuku') || Request::is('databuku/*') ? 'color:white;background-color: #34b4cf;' : 'color:white' }}">Buku</a></li>
                        <li><a href="{{ url('datakategoribuku') }}" style="{{ Request::is('datakategoribuku') || Request::is('datakategoribuku/*') ? 'color:white;background-color: #34b4cf;' : 'color:white' }}">Kategori Buku</a></li>
                    </ul>
                </li>
                <li>
                    <a href="{{ url('datatransaksi') }}" style="{{ Request::is('datatransaksi') || Request::is('datatransaksi/*') ? 'color:white;background-color: #34b4cf;' : 'color:white' }}">Data Transaksi</a>
                </li>
                <li>           
                    <a href="{{url('pengaturanakun')}}" style="{{ Request::is('pengaturanakun') ? 'color:white;background-color: #34b4cf;' : 'color:white' }}">Pengaturan Akun</a>
                </li>
                <li>
                     <a href="{{ route('logout') }}"
                        onclick="event.preventDefault();
                                 document.getElementById('logout-form').submit();">
                        Keluar
                    </a>

                    <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                        {{ csrf_field() }}
                    </form>
                </li>
            </ul>      
        </nav>
        <div id="page-content-wrapper" style="background-color:#34b4cf;border-bottom:1px solid black;position:fixed;z-index:3000">
            <button type="button" class="hamburger is-closed" data-toggle="offcanvas">
                <span class="hamb-top"></span>
                <span class="hamb-middle"></span>
                <span class="hamb-bottom"></span>
            </button>
        </div>
        @yield('content')
    </div>
    <script src="{{ asset('bootstrap-3.3.7-dist/googleapis/jquery.min.js') }}"></script>
    <script src="{{ asset('bootstrap-3.3.7-dist/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('js/main.js') }}"></script>
    @yield('datatable')
</body>
</html>

@else


{{-- <script>window.location = "/dashboard";</script> --}}
<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>
<body>
    <div id="app">
        <nav class="navbar navbar-expand-md navbar-light bg-white shadow-sm">
            <div class="container">
                <a class="navbar-brand" href="{{ url('/') }}">
                    {{ config('app.name', 'Laravel') }}
                </a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="{{ __('Toggle navigation') }}">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <!-- Left Side Of Navbar -->
                    <ul class="navbar-nav mr-auto">

                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="navbar-nav ms-auto">
                        <!-- Authentication Links -->
                        @guest
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('login') }}">{{ __('Login') }}</a>
                            </li>
                            @if (Route::has('register'))
                                <li class="nav-item">
                                    <a class="nav-link" href="{{ route('register') }}">{{ __('Register') }}</a>
                                </li>
                            @endif
                        @else
                            <li class="nav-item dropdown">
                                <a id="navbarDropdown" class="nav-link dropdown-toggle" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" v-pre>
                                    {{ Auth::user()->name }}
                                </a>

                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="{{ route('logout') }}"
                                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                        {{ __('Logout') }}
                                    </a>

                                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                                        @csrf
                                    </form>
                                </div>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        <main class="py-4">
            @yield('content')
        </main>
    </div>
</body>
</html>
@endif
