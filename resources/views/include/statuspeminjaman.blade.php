@if($value->status_buku == 0)
Tersedia
@elseif($value->status_buku == 1)
Sedang Dipinjam
@elseif($value->status_buku == 2)
Tidak Tersedia
@endif
