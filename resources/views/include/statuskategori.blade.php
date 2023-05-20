@if($value->status_kategori == 0)
Mahasiswa
@elseif($value->status_kategori == 1)
Dosen
@elseif($value->status_kategori == 2)
Skripsi
@endif
