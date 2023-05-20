@if($value->tanggalpengembalian == "")
@if(date('Y-m-d') <= date('Y-m-d', strtotime("+7 day", strtotime($value->tanggalpeminjaman))))
Belum Jatuh Tempo
@else
<?php 
$date1 = new DateTime(date("Y-m-d", strtotime("+7 day", strtotime($value->tanggalpeminjaman))));
$date2 = new DateTime(date("Y-m-d"));
$interval = $date1->diff($date2);
?>
Sudah Jatuh Tempo (Telat: {{$interval->days}} Hari)
@endif
@else
Sudah Dikembalikan
@endif