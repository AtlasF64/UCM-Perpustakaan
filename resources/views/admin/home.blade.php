@extends('layouts.app')

@section('content')
        {{-- <div id="layoutSidenav_content">
            <main> --}}
                <div class="container-fluid px-4">
                    <h1 class="mt-4">Dashboard Perpustakaan UCM</h1>
                    <ol class="breadcrumb mb-4">
                        <li class="breadcrumb-item active">Overview</li>
                    </ol>
                    <div class="row">
                        <div id="kategori-view"class="col-xl-2 col-md-6">
                            <div class="card bg-primary text-white mb-4">
                                <div class="card-body">Kategori Buku
                                    <span class="count-numbers"> {{ $kategori }}</span>
                                </div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="#">View Details</a>
                                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                </div>
                            </div>
                        </div>
                        <div id="buku-view" class="col-xl-2 col-md-6">
                            <div class="card bg-warning text-white mb-4">
                                <div class="card-body">Total Buku
                                    <span class="count-numbers">{{ $buku }}</span>
                                </div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="#">View Details</a>
                                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                </div>
                            </div>
                        </div>
                        <div id="Peminjaman-view" class="col-xl-2 col-md-6">
                            <div class="card bg-success text-white mb-4">
                                <div class="card-body">Peminjaman
                                    <span class="count-numbers">{{ $peminjaman }}</span>
                                </div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="#">View Details</a>
                                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                </div>
                            </div>
                        </div>
                        <div id="Pemgembalian-view" class="col-xl-2 col-md-6">
                            <div class="card bg-danger text-white mb-4">
                                <div class="card-body">Pemgembalian
                                    <span class="count-numbers">{{ $pengembalian }}</span>
                                </div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="#">View Details</a>
                                    <div class="small text-white"><i class="fas fa-angle-right"></i></div>
                                </div>
                            </div>
                        </div>
                        <div id="Member-view"class="col-xl-2 col-md-6">
                            <div class="card bg-primary text-white mb-4">
                                <div class="card-body">Total Member
                                    <span class="count-numbers"> {{ $member }}</span>
                                </div>
                                <div class="card-footer d-flex align-items-center justify-content-between">
                                    <a class="small text-white stretched-link" href="#">View Details</a>
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
                                {{-- @extends('admin/datatransaksi.index') --}}
                                <tbody>
                                    <?php $i = 1; ?>

                                    @foreach ($datapeminjaman as $key => $value)
                                        @if (date('Y-m-d') <= date('Y-m-d', strtotime('+7 day', strtotime($value->tanggalpeminjaman))))
                                            <tr>
                                            @else
                                                @if ($value->tanggalpengembalian != '')
                                            <tr>
                                            @else
                                            <tr style="background-color:yellow">
                                        @endif
                                    @endif
                                    <td><?php echo $i; ?></td>
                                    <td>{{ $value->kode_peminjaman }}</td>
                                    <td>{{ date('l, d M Y', strtotime($value->tanggalpeminjaman)) }}</td>
                                    <td>{{ $value->name }}</td>
                                    <td>{{ date('l, d M Y', strtotime('+7 day', strtotime($value->tanggalpeminjaman))) }}
                                    </td>
                                    <td>
                                        @include('include.statustransaksipeminjaman')
                                    </td>
                                    <td style="text-align:right">
                                        <a href="{{ url('datatransaksi/datapeminjaman') }}/{{ $value->id_peminjaman2 }}"
                                            style="color:skyblue"><i class="fa fa-eye"></i></a>
                                    </td>
                                    <td>
                                        
                                    </td>
                                    </tr>
                                    <?php $i++; ?>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
            </main>
            @endsection
           

