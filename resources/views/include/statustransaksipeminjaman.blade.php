@if($value->tanggalpengembalian == "")
@if(date('Y-m-d') <= date('Y-m-d', strtotime("+7 day", strtotime($value->tanggalpeminjaman))))

<a style="color: #f0be40">Sedang Di Pinjam</a>
@else
<?php 
$date1 = new DateTime(date("Y-m-d", strtotime("+7 day", strtotime($value->tanggalpeminjaman))));
$date2 = new DateTime(date("Y-m-d"));
$interval = $date1->diff($date2);
?>

{{-- <a style="color: red">Sudah Jatuh Tempo (Telat: {{$interval->days}} Hari)</a> --}}
<a style="color: red">Telat: {{$interval->days}} Hari</a>
@endif
@else
<a style="color: #4CBB17">Telah Dikembalikan</a>
@endif