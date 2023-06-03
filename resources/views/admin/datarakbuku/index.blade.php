@extends('layouts.app')

@section('content')
    <div class="container-fluid px-4">
        <h1 class="mt-4">Data Rak Buku</h1>
        <div class="card mb-6">
            <div class="card-header">
                <i class="fas fa-table me-1"></i>
                Rak Buku
                <a href="{{ url('datarakbuku') }}/create" type="button" class="btn btn-primary"
                    style="float: right">Tambah Rak Buku</a>
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
                <table id="example" class="table table-striped">
                    <thead>
                        <tr>
                            <th style="width:30px">No</th>
                            <th>Rak Buku</th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $i = 1; ?>
                        @foreach ($datarakbuku as $key => $value)
                            <tr>
                                <td><?php echo $i; ?></td>
                                <td>{{ $value->rakbuku }}</td>

                                <td style="text-align: right">
                                    <div class="dropdown">
                                        <i class="btn fa-solid fa-ellipsis dropdown-toggle" data-bs-toggle="dropdown"
                                            href="#exampleModalToggle" role="button" aria-expanded="false"></i>
                                        </button>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item"
                                                    href="{{ url('datarakbuku') }}/{{ $value->id_rakbuku }}"><i class="fa fa-eye"></i> View Detail
                                                </a>
                                            </li>
                                            <li><a class="dropdown-item"
                                                    href="{{ url('datarakbuku') }}/{{ $value->id_rakbuku }}/edit"><i class="fa fa-edit"></i> Edit
                                                </a>
                                            </li>
                                            <li>
                                                <a type="button" class="dropdown-item" data-bs-toggle="modal"
                                                    data-bs-target="#exampleModal{{ $value->id_rakbuku }}"><i class="fa fa-trash"></i> Delete
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    {{-- <a href="{{ url('datarakbuku') }}/{{ $value->id_rakbuku }}/edit"
                                        style="color:green"><i class="fa fa-edit"></i></a> --}}
                                </td>
                                <td>
                                    <!-- Button trigger modal -->
                                    {{-- <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                        data-bs-target="#exampleModal{{ $value->id_rakbuku }}">
                                        <i class="fa fa-trash"></i>
                                    </button> --}}

                                    <!-- Modal -->
                                    <div class="modal fade" id="exampleModal{{ $value->id_rakbuku }}" tabindex="-1"
                                        aria-labelledby="exampleModalLabel{{ $value->id_rakbuku }}" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Hapus Rak Buku
                                                    </h1>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                        aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <p>Apakah Anda Yakin Akan Menghapus Rak Buku?</p>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary"
                                                        data-bs-dismiss="modal">Tidak</button>
                                                    <form method="POST"
                                                        action="{{ url('datarakbuku') }}/{{ $value->id_rakbuku }}"
                                                        accept-charset="UTF-8">
                                                        <input type="hidden" name="_token" value="{{ csrf_token() }}">
                                                        <input name="_method" type="hidden" value="DELETE">
                                                        <button type="submit" class="btn btn-primary"
                                                            style="background-color:red;width:100%">Hapus</button>
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
