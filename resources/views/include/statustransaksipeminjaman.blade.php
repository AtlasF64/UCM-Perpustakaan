@if($value->tanggalpengembalian == "")
@if(date('Y-m-d') <= date('Y-m-d', strtotime("+7 day", strtotime($value->tanggalpeminjaman))))

<a style="color: #fbc336">Belum Jatuh Tempo</a>
@else
<?php 
$date1 = new DateTime(date("Y-m-d", strtotime("+7 day", strtotime($value->tanggalpeminjaman))));
$date2 = new DateTime(date("Y-m-d"));
$interval = $date1->diff($date2);
?>

<a style="color: red">Sudah Jatuh Tempo (Telat: {{$interval->days}} Hari)</a>
@endif
@else
<a style="color: #4CBB17">Sudah Dikembalikan</a>
@endif