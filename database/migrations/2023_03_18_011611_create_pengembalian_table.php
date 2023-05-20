<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePengembalianTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('pengembalian', function (Blueprint $table) {
            $table->id('id_pengembalian');
            $table->unsignedBigInteger('id_peminjaman');
            $table->char('kode_pengembalian',16);
            $table->date('tanggalpengembalian');
            $table->decimal('jumlahdenda',20,0);
            $table->text('catatanpengembalian')->nullable();
            $table->timestamps();
        });

        Schema::table('pengembalian', function(Blueprint $table) {
            $table->foreign('id_peminjaman')
                ->references('id_peminjaman')->on('peminjaman')
                ->onDelete('cascade');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('pengembalian');
    }
}
