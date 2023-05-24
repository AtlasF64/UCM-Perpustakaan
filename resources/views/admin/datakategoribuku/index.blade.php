@extends('layouts.app')

@section('content')
    <div class="container-fluid px-4">
        <h1 class="mt-4">Data Kategori Buku</h1>
        <div class="card mb-6">
            <div class="card-header">
                <i class="fas fa-table me-1"></i>
                Kategori Buku
                <a href="{{ url('datakategoribuku') }}/create" type="button" class="btn btn-primary"
                    style="float: right">Tambah Kategori Buku</a>
            </div>
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
            {{-- <button type="button" href="{{ url('databuku') }}/create" class="btn btn-primary">Tambah Data</button> --}}

            <div class="card-body">
                <table class="table">
                    <thead>
                        <tr>
                            <th style="width:30px">No</th>
                            <th>Kategori Buku</th>
                            <th></th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $i = 1; ?>
                        @foreach ($datakategoribuku as $key => $value)
                            <tr>
                                <td><?php echo $i; ?></td>
                                <td>{{ $value->kategoribuku }}</td>

                                <td style="text-align:right">
                                    <a href="{{ url('datakategoribuku') }}/{{ $value->id_kategoribuku }}/edit"
                                        style="color:green"><i class="fa fa-edit"></i></a>
                                </td>
                                <td>
                                    <!-- Button trigger modal -->
                                    <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                                        data-bs-target="#exampleModal{{ $value->id_kategoribuku }}">
                                        <i class="fa fa-trash"></i>
                                    </button>

                                    <!-- Modal -->
                                    <div class="modal fade" id="exampleModal{{ $value->id_kategoribuku }}" tabindex="-1"
                                        aria-labelledby="exampleModalLabel{{ $value->id_kategoribuku }}" aria-hidden="true">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h1 class="modal-title fs-5" id="exampleModalLabel">Hapus Kategori Buku
                                                    </h1>
                                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                                        aria-label="Close"></button>
                                                </div>
                                                <div class="modal-body">
                                                    <p>Apakah Anda Yakin Akan Menghapus Kategori Buku?</p>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-secondary"
                                                        data-bs-dismiss="modal">Tidak</button>
                                                    <form method="POST"
                                                        action="{{ url('datakategoribuku') }}/{{ $value->id_kategoribuku }}"
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
