<?php if($value->status_buku == 0): ?>
Tersedia
<?php elseif($value->status_buku == 1): ?>
Sedang Dipinjam
<?php elseif($value->status_buku == 2): ?>
Tidak Tersedia
<?php endif; ?>
<?php /**PATH C:\xampp\htdocs\perpustakaan\resources\views/include/statuspeminjaman.blade.php ENDPATH**/ ?>