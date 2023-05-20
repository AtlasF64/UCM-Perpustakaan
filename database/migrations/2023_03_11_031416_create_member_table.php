<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMemberTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('member', function (Blueprint $table) {
            $table->id('id_member');
            $table->unsignedBigInteger('id');
            $table->string('nimnidnnip',20);
            $table->string('nomortelepon',16);
            $table->text('alamat');
            $table->timestamps();
        });

        Schema::table('member', function(Blueprint $table) {
            $table->foreign('id')
                ->references('id')->on('users')
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
        Schema::dropIfExists('member');
    }
}
