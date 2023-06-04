@if($value->status_buku == 0)
<a style="color: #4CBB17">Tersedia</a>
@elseif($value->status_buku == 1)
<a style="color: #f0be40">Sedang Dipinjam</a>
@elseif($value->status_buku == 2)
<a style="color: red">Tidak Tersedia</a>
@elseif($value->status_buku == 3)
<a style="color: rgb(81, 81, 81)">Tidak Tampil</a>
@endif
