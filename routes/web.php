<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\TransaksiController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// Route::get('/', function () {
//     return view('welcome');
// });

Auth::routes();

Route::group(['middleware' => 'auth'], function(){
	Route::resource('/databuku', 'BooksController');
	Route::get('/home', 'HomeController@index')->name('home');
	Route::resource('/datakategoribuku', 'KategoriBookController');
	Route::resource('/datagenrebuku', 'GenreBookController');
	Route::resource('/datarakbuku', 'RakBukuController');
	// Route::resource('/datatransaksi', 'TransaksiController');
	// Route::resource('/datatransaksi/datapeminjaman', 'PeminjamanController');
	// Route::resource('/datatransaksi/datapengembalian', 'PengembalianController');
	Route::resource('/datapeminjaman', 'PeminjamanController');
	Route::resource('/datapengembalian', 'PengembalianController');
	Route::get('/informasiuser', 'UCMLibraryController@informasiuser')->name('informasiuser');
	Route::get('/informasiuser/{id_member}/edit', 'UCMLibraryController@informasiuseredit')->name('informasiuseredit');
	Route::post('/informasiuser/{id_member}/edit', 'UCMLibraryController@postinformasiuseredit')->name('postinformasiuseredit');
	Route::get('/pengaturanakun', 'UCMLibraryController@pengaturanakun')->name('informasiuser');
	Route::post('/pengaturanakun', 'UCMLibraryController@postpengaturanakun')->name('postinformasiuser');
});


Route::get('/books', 'BooksController@books')->name('books');

Route::get('/books/{id_buku}', 'BooksController@detailbooks')->name('detailbooks');

Route::get('/dashboard', 'DashboardController@dashboard');

Route::get('/ucmlibrary', 'UCMLibraryController@ucmlibrary');

// IF you log in as a user and it direct u to the wrong page, go to RouteServiceProvider.php
//  public const HOME = '/'; set to that.
Route::get('/', 'UCMLibraryController@ucmlibrary');


// Route::get('/clear-cache', function(){
// 	$run = Artisan::call('config:clear');
// 	$run = Artisan::call('cache:clear');
// 	$run = Artisan::call('config:cache');
// 	return "FINISHED";
// })