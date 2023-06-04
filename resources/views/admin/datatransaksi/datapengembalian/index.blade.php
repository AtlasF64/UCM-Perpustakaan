@extends('layouts.app')

@section('content')

    <div class="container-fluid px-4">
        <h1 class="mt-4">Data Pengembalian</h1>
        <div class="card mb-6">
            <div class="card-header">
                <i class="fas fa-table me-1"></i>
                Data Pengembalian
                <a href="{{ url('datapengembalian') }}/create" class="btn btn-primary" style="float: right">Tambah Data
                Pengembalian</a>
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
                {{-- Tabel Data Pengembalian --}}
                    <div class="card-body">

                        <table id="example" class="table table-striped" style="width:100%">
                            <thead>
                                <tr>
                                    <th style="width:30px">No</th>
                                    <th>Kode Pengembalian</th>
                                    <th>Kode Peminjaman</th>
                                    <th>Tanggal Pengembalian</th>
                                    <th>Peminjam/Member</th>
                                    <th>Total Denda</th>
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
                                    <div class="dropdown">
                                        <i class="btn fa-solid fa-ellipsis dropdown-toggle" data-bs-toggle="dropdown"
                                            href="#exampleModalToggle" role="button" aria-expanded="false"></i>
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item"
                                                    href="{{ url('datapengembalian') }}/{{ $value->id_pengembalian }}"><i class="fa fa-eye"></i> View Detail
                                                </a>
                                            </li>
                                            {{-- <li><a class="dropdown-item"
                                                    href="{{ url('datapengembalian') }}/{{ $value->id_pengembalian}}/edit"><i class="fa fa-edit"></i> Edit
                                                </a>
                                            </li> --}}
                                            <li>
                                                <a type="button" class="dropdown-item" data-bs-toggle="modal"
                                                    data-bs-target="#exampleModal{{ $value->id_pengembalian}}"><i class="fa fa-trash"></i> Delete
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    {{-- <a href="{{ url('datatransaksi/datapengembalian') }}/{{ $value->id_pengembalian2 }}"
                                        style="color:skyblue"><i class="fa fa-eye"></i></a> --}}
                                </td>
                                {{-- <td style="text-align:right">
                                    <a href="{{ url('datatransaksi/datapengembalian') }}/{{ $value->id_pengembalian2 }}/edit"
                                        style="color:green"><i class="fa fa-edit"></i></a>
                                </td> --}}
                                <td>
                                    <!-- Button trigger modal -->
                                    {{-- <a type="button" class="btn" data-bs-toggle="modal"
                                        data-bs-target="#exampleModal{{ $value->id_pengembalian2}}">
                                        <i class="fa fa-trash"></i>
                                    </a> --}}

                                    <!-- Modal -->
                                    <div class="modal fade" id="exampleModal{{ $value->id_pengembalian}}" tabindex="-1"
                                        aria-labelledby="exampleModalLabel{{ $value->id_pengembalian}}" aria-hidden="true">
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
                                                        action="{{ url('datapengembalian') }}/{{ $value->id_pengembalian }}"
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
