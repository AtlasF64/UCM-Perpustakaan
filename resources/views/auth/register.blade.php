@extends('ucmlibrary.layouts.appuser')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card" style="margin-top: 30px;margin-bottom: 30px">
                <div class="card-header">{{ __('Register') }}</div>

                <div class="card-body">
                    <form method="POST" action="{{ route('register') }}">
                        @csrf

                        <div class="form-group row">
                            <label for="name" class="col-md-4 col-form-label text-md-right">{{ __('Name') }} <font style="color:red">*</font></label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>

                                @error('name')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                         <div class="form-group row">
                            <label for="nimnidnnip" class="col-md-4 col-form-label text-md-right">{{ __('NIM/NIDN/NIP') }} <font style="color:red">*</font></label>

                            <div class="col-md-6">
                                <input id="nimnidnnip" type="text" class="form-control @error('nimnidnnip') is-invalid @enderror" name="nimnidnnip" value="{{ old('nimnidnnip') }}" required>

                                @error('nimnidnnip')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="nomortelepon" class="col-md-4 col-form-label text-md-right">{{ __('Nomor HP') }} <font style="color:red">*</font></label>

                            <div class="col-md-6">
                                <input id="nomortelepon" type="number" class="form-control @error('nomortelepon') is-invalid @enderror" name="nomortelepon" value="{{ old('nomortelepon') }}" placeholder="081234567890" required>

                                @error('nomortelepon')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                        <div class="form-group row">
                            <label for="alamat" class="col-md-4 col-form-label text-md-right">{{ __('Alamat') }} <font style="color:red">*</font></label>

                            <div class="col-md-6">
                                <textarea class="form-control @error('alamat') is-invalid @enderror" name="alamat" required>{{ old('alamat') }}</textarea>

                                @error('alamat')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>
                         <div class="form-group row">
                            <label for="keterangan" class="col-md-4 col-form-label text-md-right">{{ __('Status Keanggotaan') }} <font style="color:red">*</font></label>

                            <div class="col-md-6">
                                <select class="form-control @error('status_akun') is-invalid @enderror" name="status_akun" required>
                                    <option value="1" <?php if(old('status_akun')=='1') echo 'selected';?>>Mahasiswa</option>
                                    <option value="2" <?php if(old('status_akun')=='2') echo 'selected';?>>Dosen</option>
                                    <option value="3" <?php if(old('status_akun')=='3') echo 'selected';?>>Staff</option>
                                </select>

                                @error('status_akun')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>


                        <div class="form-group row">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('Alamat Email') }} <font style="color:red">*</font></label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Password') }} <font style="color:red">*</font></label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row">
                            <label for="password-confirm" class="col-md-4 col-form-label text-md-right">{{ __('Confirm Password') }} <font style="color:red">*</font></label>

                            <div class="col-md-6">
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
                            </div>
                        </div>

                        

                        <div class="form-group row mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Register') }}
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
