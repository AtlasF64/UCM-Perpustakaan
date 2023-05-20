<div class="col mb-5">
    <div class="card h-100">
        <!-- Product image-->
        <img class="card-img-top" src="{{asset('img/fotocoverbuku')}}/{{$value->fotocoverbuku}}"
            alt="{{$value->fotocoverbuku}}" />
        <!-- Product details-->
        <div class="card-body p-4">
            <div class="text-center" style="height:80px">
                <!-- Product name-->
                <h5 class="fw-bolder"><b>{{$value->judulbuku}}</b></h5>
                <!-- Product price-->
            </div>
            <hr>
            <h6><b>Pengarang:</b> {{$value->author}}</h6>
            <h6><b>Tahun:</b> {{$value->tahun}}</h6>
        </div>
        <!-- Product actions-->
        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
            <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="{{url('books')}}/{{$value->id_buku}}">Lihat Detail Buku</a></div>
        </div>
    </div>
</div>