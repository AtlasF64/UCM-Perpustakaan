@extends('layouts.app')


@section('content')
    <script src="{{ asset('js/selectize.min.js') }}"></script>
    <div class="container" style="padding:20px;padding-top:75px">
        <h2 class="tengah">Tambah Data Buku</h2>
        <?php if(Session::has('message_success')): ?>
        <div id="message-success" class="message-success" style="margin:4px">
            <?php echo Session::get('message_success'); ?>
        </div>
        <?php endif;?>
        <?php if(Session::has('message_failed')): ?>
        <div id="message-failed" class="message-failed" style="margin:4px">
            <?php echo Session::get('message_failed'); ?>
        </div>
        <?php endif;?>
        <div class="row">
            <form class="form-horizontal" enctype="multipart/form-data" style="padding:20px" role="form" method="POST"
                action="{{ url('databuku') }}">
                <input type="hidden" name="_token" value="{{ csrf_token() }}">
                <div class="form-group">
                    <label id="kodebuku" class="col-md-4 control-label">Kode Buku <font style="color:red">*</font></label>
                    <div class="col-md-6">
                        <input type="text" id="kodebuku" class="form-control" name="kodebuku" maxlength="12" required
                            value="{{ old('kodebuku') }}" />
                    </div>
                </div>
                <div class="form-group">
                    <label id="kategoribuku" class="col-md-4 control-label">Kategori Buku <font style="color:red">*</font>
                    </label>
                    <div class="col-md-6">
                        <select id="kategoribuku" name="kategoribuku" class="form-control" required>
                            {{-- <option value="{{old('kategoribuku')}}" selected disabled hidden>Pilih Kategori</option>
						@foreach ($datakategoribuku as $key => $value)
						<option value="{{$value->id_kategoribuku}}">{{$value->kategoribuku}}</option>
						@endforeach --}}
                            <option value="" selected disabled hidden>Pilih Kategori</option>
                            @foreach ($datakategoribuku as $key => $value)
                                <option value="{{ $value->id_kategoribuku }}"
                                    {{ old('kategoribuku') == $value->id_kategoribuku ? 'selected' : '' }}>
                                    {{ $value->kategoribuku }}
                                </option>
                            @endforeach
                        </select>
                    </div>
                </div>
                {{-- <div class="form-group">
				<label id="genrebuku" class="col-md-4 control-label">Genre Buku <font style="color:red">*</font></label>
				<div class="col-md-6">
					<select id="genrebuku" name="genrebuku" class="form-control" required>
						<option value="" selected disabled hidden>Pilih Genre</option>
						@foreach ($datagenrebuku as $key => $value)
						<option value="{{$value->id_genrebuku}}">{{$value->genrebuku}}</option>
						@endforeach
					</select>
				</div>
			</div> --}}
                <div class="form-group">
                    <label id="rakbuku" class="col-md-4 control-label">Rak Buku <font style="color:red">*</font></label>
                    <div class="col-md-6">
                        <select id="rakbuku" name="rakbuku" class="form-control">
                            {{-- <option value="{{ old('rakbuku') }}" selected disabled hidden required="required">Pilih Rak
                            </option>
                            @foreach ($datarakbuku as $key => $value)
                                <option value="{{ $value->id_rakbuku }}">{{ $value->rakbuku }}</option>
                            @endforeach --}}
                            <option value="" selected disabled hidden>Pilih Kategori</option>
                            @foreach ($datarakbuku as $key => $value)
                                <option value="{{ $value->id_rakbuku }}"
                                    {{ old('rakbuku') == $value->id_rakbuku ? 'selected' : '' }}>
                                    {{ $value->rakbuku }}
                                </option>
                            @endforeach
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label id="judulbuku" class="col-md-4 control-label">Judul Buku <font style="color:red">*</font></label>
                    <div class="col-md-6">
                        <textarea id="judulbuku" class="form-control" name="judulbuku" required>{{ old('judulbuku') }}</textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label id="author" class="col-md-4 control-label">Author <font style="color:red">*</font></label>
                    <div class="col-md-6">
                        <textarea required id="author" class="form-control" name="author">{{ old('author') }}</textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label id="publisher" class="col-md-4 control-label">Publisher <font style="color:red">*</font></label>
                    <div class="col-md-6">
                        <textarea required id="publisher" class="form-control" name="publisher">{{ old('publisher') }}</textarea>
                    </div>
                </div>
                <div class="form-group">
                    <label id="kota" class="col-md-4 control-label">Kota <font style="color:red">*</font></label>
                    <div class="col-md-6">
                        <input required type="text" id="kota" class="form-control" name="kota" maxlength="30"
                            value="{{ old('kota') }}" />
                    </div>
                </div>
                <div class="form-group">
                    <label id="tahun" class="col-md-4 control-label">Tahun <font style="color:red">*</font></label>
                    <div class="col-md-6">
                        <select required id="tahun" name="tahun" class="form-control">
                            <option value="" selected disabled hidden>Pilih Tahun</option>
                            @for ($i = date('Y'); $i >= 1950; $i--)
                                <option value="{{ $i }}" {{ old('tahun') == $i ? 'selected' : '' }}>
                                    {{ $i }}
                                </option>
                            @endfor

                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <label id="fotocoverbuku" class="col-md-4 control-label">Upload Foto Cover Buku (optional)</label>
                    <div class="col-md-6">

                        <img src="{{ asset('img/fotocoverbuku/default.png') }}" class="img-responsive" />

                        <input type="file" id="fotocoverbuku" class="form-control" name="fotocoverbuku"
                            accept=".jpg,.png,.jpeg" />
                    </div>
                </div>
                <div class="form-group">
                    <label id="status_kategori" class="col-md-4 control-label">Status Kategori Buku <font
                            style="color:red">*</font></label>
                    <div class="col-md-6">
                        <select id="status_kategori" name="status_kategori" class="form-control" required="required">
                            <option value="" selected disabled hidden>Pilih Status Kategori Buku</option>
                            <option value="0" {{ old('status_kategori') == '0' ? 'selected' : '' }}>Mahasiswa
                            </option>
                            <option value="1" {{ old('status_kategori') == '1' ? 'selected' : '' }}>Dosen</option>
                        </select>
                    </div>
                </div>
                {{-- <div class="form-group">
				<label id="statusaktif" class="col-md-4 control-label">Status Aktif <font style="color:red">*</font></label>
				<div class="col-md-6">
					<select id="statusaktif" name="statusaktif" class="form-control" required="required">
						<option value="" selected disabled hidden>Pilih Status Aktif</option>
						<option value="0">Tidak Aktif</option>
						<option value="1">Aktif</option>
					</select>
				</div>
			</div> --}}
                <div class="form-group">
                    <div class="col-md-6 col-md-offset-4 mt-2">
                        <button id="myForm" type="submit" class="btn btn-primary" style="width:100%">
                            SUBMIT
                        </button>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-6 col-md-offset-4 mt-2">
                        <a href="{{ url('databuku') }}" class="btn btn-primary" style="width:100%;background-color:red">
                            KEMBALI KE DATA BUKU
                        </a>
                    </div>
                </div>
            </form>
        </div>
    </div>
@endsection
{{-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script type="text/javascript">
	    $(document).ready(function () {
        $('#myForm').submit(function (event) {
            event.preventDefault(); // Prevent the form from submitting normally

            $.ajax({
                type: 'POST',
                url: '/create',
                data: $('#myForm').serialize(),
                success: function (response) {
                    if (response.error) {
                        $('#message-failed').text(response.error);
                    } else {
                        $('#message-success').text(response.message);
                    }
                },
                error: function (error) {
                    console.log(error);
                }
            });
        });
    });
</script> --}}
{{-- @section('datatable')
<script src="{{ asset('js/selectize.min.js') }}"></script>
<script type="text/javascript">
	$(document).ready(function () {
	    $('select').selectize({

            onFocus: function (){
                category = this.getValue();
                this.clear(true);
            },
            onBlur:function () {
                if(this.getValue().length == 0 && this.getValue() != category){
                    this.setValue(category);
                }
            }

        });
	});
</script>


@endsection --}}
