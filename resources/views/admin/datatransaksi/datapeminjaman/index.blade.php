@extends('layouts.app')

@section('content')

    <div class="container-fluid px-4">
        <h1 class="mt-4">Data Peminjaman</h1>
        <div class="card mb-6">
            <div class="card-header">
                <i class="fas fa-table me-1"></i>
                Data Peminjaman
                <a href="{{ url('datapeminjaman') }}/create" class="btn btn-primary" style="float: right">Tambah Data
                Peminjaman</a>
            </div>


            <div>
                    <div style="margin: 10px;">
                        <?php if(Session::has('message_success')): ?>
                        <div class="message-success">
                            <?php echo Session::get('message_success'); ?>
                        </div>
                        <?php endif;?>
                        <?php if(Session::has('message_failed')): ?>
                        <div class="message-failed">
                            <?php echo Session::get('message_failed'); ?>
                        </div>
                        <?php endif;?>
                    </div>              
                {{-- Tabel Data Peminjaman --}}
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
                                </tr>
                            </thead>

                            <tbody>
                                <?php $i = 1; ?>
                                {{-- {{$datapeminjaman}} --}}
                                
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
                                    <div class="dropdown">
                                        <i class="btn fa-solid fa-ellipsis dropdown-toggle" data-bs-toggle="dropdown"
                                            href="#exampleModalToggle" role="button" aria-expanded="false"></i>
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item"
                                                    href="{{ url('datapeminjaman') }}/{{ $value->id_peminjaman2 }}"><i class="fa fa-eye"></i> View Detail
                                                </a>
                                            </li>
                                            {{-- <li><a class="dropdown-item"
                                                    href="{{ url('datapeminjaman') }}/{{ $value->id_peminjaman2}}/edit"><i class="fa fa-edit"></i> Edit
                                                </a>
                                            </li> --}}
                                            <li>
                                                <a type="button" class="dropdown-item" data-bs-toggle="modal"
                                                    data-bs-target="#exampleModal{{ $value->id_peminjaman2}}"><i class="fa fa-trash"></i> Delete
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    {{-- <a href="{{ url('datatransaksi/datapeminjaman') }}/{{ $value->id_peminjaman2 }}"
                                        style="color:skyblue"><i class="fa fa-eye"></i></a> --}}
                                </td>
                                {{-- <td style="text-align:right">
                                    <a href="{{ url('datatransaksi/datapeminjaman') }}/{{ $value->id_peminjaman2 }}/edit"
                                        style="color:green"><i class="fa fa-edit"></i></a>
                                </td> --}}
                                <td>
                                    <!-- Button trigger modal -->
                                    {{-- <a type="button" class="btn" data-bs-toggle="modal"
                                        data-bs-target="#exampleModal{{ $value->id_peminjaman2}}">
                                        <i class="fa fa-trash"></i>
                                    </a> --}}

                                    <!-- Modal -->
                                    <div class="modal fade" id="exampleModal{{ $value->id_peminjaman2}}" tabindex="-1"
                                        aria-labelledby="exampleModalLabel{{ $value->id_peminjaman2}}" aria-hidden="true">
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
                                                        action="{{ url('datapeminjaman') }}/{{ $value->id_peminjaman2 }}"
                                                        accept-charset="UTF-8">
                                                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
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
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                {{-- Tabel Data Pengembalian --}}
                {{-- <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                    <div>
                        <div>
                            <a href="{{ url('datatransaksi/datapengembalian') }}/create"
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

                                    @foreach ($datapengembalian as $key => $value)
                                        <tr>
                                            <td><?php echo $i; ?></td>
                                            <td>{{ $value->kode_pengembalian }}</td>
                                            <td>{{ $value->kode_peminjaman }}</td>
                                            <td>{{ date('l, d M Y', strtotime($value->tanggalpengembalian)) }}</td>
                                            <td>{{ $value->name }}</td>
                                            <td>Rp {{ number_format($value->jumlahdenda, 0) }}</td>
                                            <td>
                                                {{ $value->catatanpengembalian }}
                                            </td>
                                            <td style="text-align:right">
                                                <a href="{{ url('datatransaksi/datapeminjaman') }}/{{ $value->id_peminjaman }}#pengembalian"
                                                    style="color:skyblue"><i class="fa fa-eye"></i></a>
                                            </td>
                                            <td style="text-align:right">
                                                <a href="{{ url('datatransaksi/datapengembalian') }}/{{ $value->id_pengembalian }}/edit"
                                                    style="color:green"><i class="fa fa-edit"></i></a>
                                            </td>
                                            <td>
                                                <!-- Button trigger modal -->
                                                <a type="button" class="btn" data-bs-toggle="modal"
                                                    data-bs-target="#exampleModal{{ $value->id_pengembalian }}">
                                                    <i class="fa fa-trash"></i>
                                                </a>

                                                <!-- Modal -->
                                                <div class="modal fade" id="exampleModal{{ $value->id_pengembalian }}"
                                                    tabindex="-1"
                                                    aria-labelledby="exampleModalLabel{{ $value->id_pengembalian }}"
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
                                                                    action="{{ url('datatransaksi/datapengembalian') }}/{{ $value->id_pengembalian }}"
                                                                    accept-charset="UTF-8">
                                                                    <input type="hidden" name="_token"
                                                                        value="{{ csrf_token() }}">
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
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div> --}}
                {{-- <div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                    TEST 3
                </div> --}}
            </div>

        </div>
    </div>
@endsection
{{-- @section('datatable')
    <script src="{{ asset('js/jquery.dataTables.min.js') }}"></script>
    <script src="{{ asset('js/dataTables.bootstrap.min.js') }}"></script>
    <script type="text/javascript">
        $(document).ready(function(e) {
            var t = $('#datatableboots').DataTable({
                "scrollX": true,
                "deferRender": true,
                "responsive": true
            });
            var t2 = $('#datatableboots2').DataTable({
                "scrollX": true,
                "deferRender": true,
                "responsive": true
            });
        });
    </script>
@endsection --}}
