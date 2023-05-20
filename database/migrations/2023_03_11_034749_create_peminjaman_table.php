<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreatePeminjamanTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('peminjaman', function (Blueprint $table) {
            $table->id('id_peminjaman');
            $table->unsignedBigInteger('id_buku');
            $table->unsignedBigInteger('id_member');
            $table->char('kode_peminjaman',16);
            $table->date('tanggalpeminjaman');
            $table->text('catatan')->nullable();
            $table->timestamps();
        });

        Schema::table('peminjaman', function(Blueprint $table) {
            $table->foreign('id_buku')
                ->references('id_buku')->on('buku')
                ->onDelete('cascade');
            $table->foreign('id_member')
                ->references('id_member')->on('member')
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
        Schema::dropIfExists('peminjaman');
    }
}
