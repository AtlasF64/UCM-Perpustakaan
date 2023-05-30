@extends('layouts.app')

@section('content')
    <div class="container-fluid px-4">
        <h1 class="mt-4">Seluruh Data Buku</h1>
        <div class="card mb-6">
            <div class="card-header">
                <i class="fas fa-table me-1"></i>
                Daftar Buku
                <a href="{{ url('databuku') }}/create" type="button" class="btn btn-primary" style="float: right">Tambah
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
            {{-- <button type="button" href="{{ url('databuku') }}/create" class="btn btn-primary">Tambah Data</button> --}}

            <div class="card-body">
                <table id="example" class="table table-striped" style="width:100%">
                    <thead>
                        <tr>
                            <th style="width:30px">No</th>
                            <th>Kode Buku</th>
                            <th>Judul Buku</th>
                            <th>Author</th>
                            <th>Publisher</th>
                            <th>Tahun</th>
                            <th>Status Kategori</th>
                            <th>Status Buku</th>
                            <th></th>
                            <th></th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>
                    {{-- <tfoot>
                        <tr>
                            <th>Name</th>
                            <th>Position</th>
                            <th>Office</th>
                            <th>Age</th>
                            <th>Start date</th>
                            <th>Salary</th>
                            <th>Salary</th>
                        </tr>
                    </tfoot> --}}
                    <tbody>
                        <?php $i = 1; ?>
                        @foreach ($databuku as $key => $value)
                            <tr>
                                <td><?php echo $i; ?></td>
                                <td>{{ $value->kodebuku }}</td>
                                <td>{{ $value->judulbuku }}</td>
                                <td>{{ $value->author }}</td>
                                <td>{{ $value->publisher }}</td>
                                <td>{{ $value->tahun }}</td>
                                <td>@include('include/statuskategori')</td>
                                <td>@include('include/statuspeminjaman')</td>
                                <td>
                                    {{-- tooltip --}}
                                    <div class="modal fade" id="exampleModalToggle" aria-hidden="true"
                                        aria-labelledby="exampleModalToggleLabel" tabindex="-1">
                                        <div class="modal-dialog modal-dialog-centered">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalToggleLabel">Modal 1</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                        aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    {{-- Show a second modal and hide this one with the button below. --}}



                                                </div>
                                                <div class="modal-footer">
                                                    <button class="btn btn-primary" data-bs-target="#exampleModalToggle2"
                                                        data-bs-toggle="modal" data-bs-dismiss="modal">Open second
                                                        modal</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal fade" id="exampleModalToggle2" aria-hidden="true"
                                        aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
                                        <div class="modal-dialog modal-dialog-centered">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h5 class="modal-title" id="exampleModalToggleLabel2">Modal 2</h5>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                        aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    Hide this modal and show the first with the button below.
                                                </div>
                                                <div class="modal-footer">
                                                    <button class="btn btn-primary" data-bs-target="#exampleModalToggle"
                                                        data-bs-toggle="modal" data-bs-dismiss="modal">Back to
                                                        first</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <i class="btn fa-solid fa-ellipsis" data-bs-toggle="modal" href="#exampleModalToggle"
                                        role="button"></i>
                                    {{-- <a class="btn btn-primary" data-bs-toggle="modal" href="#exampleModalToggle" role="button">Open first modal</a> --}}

                                </td>
                                <td style="text-align:right">
                                    <a href="{{ url('databuku') }}/{{ $value->id_buku }}" style="color:skyblue"
                                        target="_blank"><i class="fa fa-eye"></i></a>
                                </td>
                                <td style="text-align:right">
                                    <a href="{{ url('databuku') }}/{{ $value->id_buku }}/edit" style="color:green"><i
                                            class="fa fa-edit"></i></a>
                                </td>
                                <td>
                                    <!-- Button trigger modal -->
                                    <a type="button" class="btn" data-bs-toggle="modal"
                                        data-bs-target="#exampleModal{{ $value->id_buku }}">
                                        <i class="fa fa-trash"></i>
                                    </a>

                                    <!-- Modal -->
                                    <div class="modal fade" id="exampleModal{{ $value->id_buku }}" tabindex="-1"
                                        aria-labelledby="exampleModalLabel{{ $value->id_buku }}" aria-hidden="true">
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
                                                        action="{{ url('databuku') }}/{{ $value->id_buku }}"
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
        });
    </script>
@endsection --}}
