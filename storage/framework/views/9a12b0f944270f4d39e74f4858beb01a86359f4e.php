<?php if($value->tanggalpengembalian == ""): ?>
<?php if(date('Y-m-d') <= date('Y-m-d', strtotime("+7 day", strtotime($value->tanggalpeminjaman)))): ?>
Belum Jatuh Tempo
<?php else: ?>
<?php 
$date1 = new DateTime(date("Y-m-d", strtotime("+7 day", strtotime($value->tanggalpeminjaman))));
$date2 = new DateTime(date("Y-m-d"));
$interval = $date1->diff($date2);
?>
Sudah Jatuh Tempo (Telat: <?php echo e($interval->days); ?> Hari)
<?php endif; ?>
<?php else: ?>
Sudah Dikembalikan
<?php endif; ?><?php /**PATH C:\Users\ASUS\Documents\GitHub\UCM-Perpustakaan\resources\views/include/statustransaksipeminjaman.blade.php ENDPATH**/ ?>