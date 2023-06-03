<?php

namespace App\Http\Controllers;
use App\Peminjaman;
use App\Pengembalian;
use Illuminate\Http\Request;

class TransaksiController extends Controller
{
    public function index()
    {
        $datapeminjaman = Peminjaman::select('peminjaman.*','peminjaman.id_peminjaman as id_peminjaman2','pengembalian.*','member.*','users.*')->leftJoin('pengembalian','pengembalian.id_peminjaman','=','peminjaman.id_peminjaman')->join('member','member.id_member','=','peminjaman.id_member')->join('users','users.id','=','member.id')->orderby('peminjaman.id_peminjaman','DESC')->get();
        $datapengembalian = Pengembalian::join('peminjaman','peminjaman.id_peminjaman','=','pengembalian.id_peminjaman')->join('member','member.id_member','=','peminjaman.id_member')->join('users','users.id','=','member.id')->orderby('id_pengembalian','DESC')->get();
         
        return view('admin.datatransaksi.index',compact('datapeminjaman','datapengembalian'));
        // return view('admin.datatransaksi.datapeminjaman.index',compact('datapeminjaman','datapengembalian'));
        // return view('admin.datatransaksi.datapengembalian.index',compact('datapeminjaman','datapengembalian'));
        // return view('admin.home',compact('datapeminjaman','datapengembalian'));
    }

    public function show()
    {
        return Peminjaman::all();
        return Pengembalian::all();
        // return view('home')
    }
}
