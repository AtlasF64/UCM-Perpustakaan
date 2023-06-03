<?php if($value->tanggalpengembalian == ""): ?>
<?php if(date('Y-m-d') <= date('Y-m-d', strtotime("+7 day", strtotime($value->tanggalpeminjaman)))): ?>

<a style="color: #fbc336">Belum Jatuh Tempo</a>
<?php else: ?>
<?php 
$date1 = new DateTime(date("Y-m-d", strtotime("+7 day", strtotime($value->tanggalpeminjaman))));
$date2 = new DateTime(date("Y-m-d"));
$interval = $date1->diff($date2);
?>

<a style="color: red">Sudah Jatuh Tempo (Telat: <?php echo e($interval->days); ?> Hari)</a>
<?php endif; ?>
<?php else: ?>
<a style="color: #4CBB17">Sudah Dikembalikan</a>
<?php endif; ?><?php /**PATH C:\Users\ASUS\Documents\GitHub\UCM-Perpustakaan\resources\views/include/statustransaksipeminjaman.blade.php ENDPATH**/ ?>