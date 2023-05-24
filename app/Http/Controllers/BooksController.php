<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Buku;
use App\KategoriBuku;
use App\Peminjaman;

class BooksController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

    public function index()
    {
        $databuku = Buku::orderby('id_buku','DESC')->get();
        return view('admin.databuku.index',compact('databuku'));
    }

    public function create()
    {
        $datakategoribuku = KategoriBuku::orderby('kategoribuku','ASC')->get();
        return view('admin.databuku.create',compact('datakategoribuku'));
    }

    public function show($id)
    {
        $value = Buku::join('kategoribuku','kategoribuku.id_kategoribuku','=','buku.id_kategoribuku')->find($id);
        return view('admin.databuku.view',compact('value'));
    }

    public function store(Request $request)
    {
        $simpan = new Buku;
        $simpan->id_kategoribuku = $request->get('kategoribuku');
        $simpan->kodebuku = $request->get('kodebuku');
        $simpan->judulbuku = $request->get('judulbuku');
        $simpan->author = $request->get('author');
        $simpan->publisher = $request->get('publisher');
        $simpan->tahun = $request->get('tahun');
        $simpan->kota = $request->get('kota');
        $fotocoverbuku = 'fotocover' . date('YmdHis') . '.' . $request->file('fotocoverbuku')->getClientOriginalExtension();
        // $request->file('fotocoverbuku')->move('img/fotocoverbuku',$fotocoverbuku);
        // $simpan->fotocoverbuku = $fotocoverbuku;
        if($request->hasFile('fotocoverbuku'))
        {
            $request->file('fotocoverbuku')->move('img/fotocoverbuku',$fotocoverbuku);
            $simpan->fotocoverbuku = $fotocoverbuku;
        }
        else {
            $simpan->fotocoverbuku = null;
        }
        $simpan->status_buku = '0';
        $simpan->status_kategori = $request->get('status_kategori'); 
        $simpan->save();
        return redirect('databuku/create')->with('message_success', 'Data Buku Berhasil Ditambahkan');
    }

    public function edit($id)
    {   
        $databuku = Buku::find($id);
        if($databuku->status_buku == '1')
        {
            return redirect('databuku/create')->with('message_failed', 'Maaf, Edit Tidak Bisa Dilakukan Dikarenakan Buku Sedang Dalam Status Dipinjam');
        }
        else
        {
            $datakategoribuku = KategoriBuku::orderby('kategoribuku','ASC')->get();
            return view('admin.databuku.edit',compact('databuku','datakategoribuku'));
        }
       
        // return view('admin.databuku.edit',compact());
        
    }
    
    public function update($id,Request $request)
    {
        $simpan = Buku::find($id);
        $simpan->kodebuku = $request->get('kodebuku');
        $simpan->judulbuku = $request->get('judulbuku');
        $simpan->author = $request->get('author');
        $simpan->publisher = $request->get('publisher');
        $simpan->tahun = $request->get('tahun');
        $simpan->kota = $request->get('kota');
        if($request->hasFile('fotocoverbuku'))
        {
            $fotocoverbuku = $simpan->fotocoverbuku;
            $request->file('fotocoverbuku')->move('img/fotocoverbuku',$fotocoverbuku);
        }
        $simpan->status_kategori = $request->get('status_kategori'); 
        $simpan->status_buku = $request->get('status_buku');
        $simpan->save();
        return redirect('databuku/' . $id . '/edit')->with('message_success', 'Data Buku Berhasil Diubah');

    }

    public function destroy($id)
    {
        $cek = Peminjaman::where('id_buku','=',$id)->count();
        if($cek == 0)
        {
            $delete = Buku::findOrFail($id);
            // unlink(public_path() . '/img/fotocoverbuku/' . $delete->fotocoverbuku);
            $delete->delete();
            return redirect('databuku')->with('message_success', 'Data Buku Berhasil Dihapus');  
        }
        else
        {
            return redirect('databuku')->with('message_failed', 'Data Buku Tidak Boleh Dihapus Karena Sudah Memiliki Data Peminjaman');
        }
        
    }

    public function books(Request $request)
    {
        if($request->get('judul') != '')
        {
            $databuku = Buku::orderby('tahun','DESC')->where('judulbuku', 'like', '%' . $request->get('judul') . '%')->paginate(9);
        }
        else
        {
            $databuku = Buku::orderby('tahun','DESC')->paginate(9);
        }
        return view('ucmlibrary.books',compact('databuku'));
    }

    public function detailbooks($id_buku)
    {
        $value = Buku::join('kategoribuku','kategoribuku.id_kategoribuku','=','buku.id_kategoribuku')->find($id_buku);
        return view('ucmlibrary.detailbooks',compact('value'));
    }
    
}