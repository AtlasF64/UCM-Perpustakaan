<?php

namespace App\Http\Controllers;
use App\Peminjaman;
use App\Buku;
use App\User;
use App\Pengembalian;
use Illuminate\Http\Request;

class PeminjamanController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index()
    {
        
    }

    public function create()
    {
        $databuku = Buku::join('kategoribuku','kategoribuku.id_kategoribuku','=','buku.id_kategoribuku')->orderby('judulbuku','ASC')->where('status_buku','=','0')->get();
        $datauser = User::join('member','member.id','=','users.id')->orderby('name','ASC')->where('status_akun','!=','0')->get();
        return view('admin.datatransaksi.datapeminjaman.create',compact('databuku','datauser'));
    }

    public function show($id)
    {
        $value = Peminjaman::select('peminjaman.*','peminjaman.id_peminjaman as id_peminjaman2','pengembalian.*','member.*','users.*','buku.*','kategoribuku.*')->leftJoin('pengembalian','pengembalian.id_peminjaman','=','peminjaman.id_peminjaman')->join('member','member.id_member','=','peminjaman.id_member')->join('users','users.id','=','member.id')->join('buku','buku.id_buku','=','peminjaman.id_buku')->join('kategoribuku','kategoribuku.id_kategoribuku','=','buku.id_kategoribuku')->find($id);
        return view('admin.datatransaksi.datapeminjaman.view',compact('value'));
    }

    public function store(Request $request)
    {
        $sudah = Peminjaman::leftJoin('pengembalian','pengembalian.id_peminjaman','=','peminjaman.id_peminjaman')->where('id_member','=',$request->get('id_member'))->where('id_pengembalian','=',null)->count();
        if($sudah == 1)
        {
             return redirect()->back()->with('message_failed', 'Member Yang Bersangkutan Belum Mengembalikan Buku Yang Dipinjam Sebelumnya');
        }
        else
        {
            $simpan = new Peminjaman;
            $simpan->id_buku = $request->get('id_buku');
            $simpan->id_member = $request->get('id_member');
            $simpan->kode_peminjaman = 'KP' . date('YmdHis');
            $simpan->tanggalpeminjaman = $request->get('tanggalpeminjaman');
            $simpan->catatan = $request->get('catatan');
            $simpan->save();

            $simpan2 = Buku::find($request->get('id_buku'));
            $simpan2->status_buku = '1';
            $simpan2->save();

            return redirect('datatransaksi/datapeminjaman/create')->with('message_success', 'Data Peminjaman Berhasil Ditambahkan'); 
        }
        
    }

    public function edit($id)
    {   
       
    }
    
    public function update($id,Request $request)
    {
        

    }

    public function destroy($id)
    {
        $delete = Peminjaman::findOrFail($id);
        $cek = Pengembalian::where('id_peminjaman','=',$id)->count();
        if($cek == 0)
        {
            $delete2 = Buku::find($delete->id_buku);
            $delete2->status_buku = "0";
            $delete2->save();
            $delete->delete();
            return redirect('datatransaksi')->with('message_success', 'Data Peminjaman Berhasil Dihapus');
        }
        else
        {
             return redirect('datatransaksi')->with('message_failed', 'Data Peminjaman Tidak Dapat Dihapus Karena Sudah Memiliki Data Pengembalian dan Dianggap Selesai');
        }
        
    }
}
