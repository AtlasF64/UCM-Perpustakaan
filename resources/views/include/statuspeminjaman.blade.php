@if($value->status_buku == 0)
<a style="color: #4CBB17">Tersedia</a>
@elseif($value->status_buku == 1)
<a style="color: #fbc336">Sedang Dipinjam</a>
@elseif($value->status_buku == 2)
<a style="color: red">Tidak Tersedia</a>
@endif
