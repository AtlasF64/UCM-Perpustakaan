<?php

namespace App\Http\Controllers;
use App\Peminjaman;
use App\Pengembalian;
use App\Buku;
use Illuminate\Http\Request;

class PengembalianController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index()
    {
        $datapengembalian = Pengembalian::join('peminjaman','peminjaman.id_peminjaman','=','pengembalian.id_peminjaman')->join('member','member.id_member','=','peminjaman.id_member')->join('users','users.id','=','member.id')->orderby('id_pengembalian','DESC')->get();
        return view('admin.datatransaksi.datapengembalian.index',compact('datapengembalian'));
    }

    public function create()
    {
        $datapeminjaman = Peminjaman::select('peminjaman.*','peminjaman.id_peminjaman as id_peminjaman2','pengembalian.*','member.*','users.*','buku.*')->leftjoin('pengembalian','pengembalian.id_peminjaman','=','peminjaman.id_peminjaman')->join('member','member.id_member','=','peminjaman.id_member')->join('users','users.id','=','member.id')->join('buku','buku.id_buku','=','peminjaman.id_buku')->where('pengembalian.id_peminjaman','=',null)->get();

        return view('admin.datatransaksi.datapengembalian.create',compact('datapeminjaman'));
    }

    public function show($id)
    {
        
    }

    public function store(Request $request)
    {
        $simpan = new Pengembalian;
        $simpan->id_peminjaman = $request->get('id_peminjaman');
        $simpan->kode_pengembalian = 'KB' . date('YmdHis');
        $simpan->tanggalpengembalian = $request->get('tanggalpengembalian');
        $simpan->jumlahdenda = $request->get('jumlahdenda');
        $simpan->catatanpengembalian = $request->get('catatanpengembalian');
        $simpan->save();
        $peminjaman = Peminjaman::find($request->get('id_peminjaman'));
        $simpan2 = Buku::find($peminjaman->id_buku);
        $simpan2->status_buku = '0';
        $simpan2->save();

        return redirect('datapengembalian')->with('message_success', 'Data Pengembalian Berhasil Ditambahkan'); 
    }

    public function edit($id)
    {   
       
    }
    
    public function update($id,Request $request)
    {
        

    }

    public function destroy($id)
    {
        $delete = Pengembalian::join('peminjaman','peminjaman.id_peminjaman','=','pengembalian.id_peminjaman')->findOrFail($id);
        $delete2 = Buku::find($delete->id_buku);
        $delete2->status_buku = "1";
        $delete2->save();
        $delete->delete();
        return redirect('datapengembalian')->with('message_success', 'Data Pengembalian Berhasil Dihapus');
    }
}
