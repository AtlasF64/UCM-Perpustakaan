<?php if($value->status_buku == 0): ?>
<a style="color: #4CBB17">Tersedia</a>
<?php elseif($value->status_buku == 1): ?>
<a style="color: #fbc336">Sedang Dipinjam</a>
<?php elseif($value->status_buku == 2): ?>
<a style="color: red">Tidak Tersedia</a>
<?php endif; ?>
<?php /**PATH C:\Users\ASUS\Documents\GitHub\UCM-Perpustakaan\resources\views/include/statuspeminjaman.blade.php ENDPATH**/ ?>