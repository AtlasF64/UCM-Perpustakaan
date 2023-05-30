<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddAdmin extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        //
        DB::table('users')->insert(array(
            'id' => '1',
            'name' => 'admin',
            'email' => 'admin@admin.com',
            'password' => '$2y$10$KKcUlPtLWGaI4EMMW9jbAOtqPC79CB67tJtjW7Upkqd5H6D4STtVi',
            'remember_token' => null,
            'status_akun' => '0',
            'created_at' => '2023-05-30 05:20:55',
            'updated_at' => '2023-05-30 05:20:55',

        ));
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
        DB:table("users")->where('name', '=', 'admin')->delete();
    }
}
