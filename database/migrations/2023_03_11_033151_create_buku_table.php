<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateBukuTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('buku', function (Blueprint $table) {
            $table->id('id_buku');
            $table->unsignedBigInteger('id_kategoribuku');
            $table->string('kodebuku',12);
            $table->text('judulbuku');
            $table->varchar('genre',20);
            $table->text('author');
            $table->string('publisher',100);
            $table->string('tahun',4);
            $table->string('kota',30);
            $table->string('fotocoverbuku',30);
            $table->string('status_buku',1);
            $table->string('status_kategori',1);
            $table->timestamps();
        });

        Schema::table('buku', function(Blueprint $table) {
            $table->foreign('id_kategoribuku')
                ->references('id_kategoribuku')->on('kategoribuku')
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
        Schema::dropIfExists('buku');
    }
}
