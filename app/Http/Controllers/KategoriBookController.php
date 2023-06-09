<?php

namespace App\Http\Controllers;
use App\KategoriBuku;
use App\Buku;
use Illuminate\Http\Request;

class KategoriBookController extends Controller
{
    public function index()
    {
    	$datakategoribuku = KategoriBuku::orderby('id_kategoribuku','ASC')->get();
    	return view('admin.datakategoribuku.index',compact('datakategoribuku'));
    }

    public function create()
    {
    	return view('admin.datakategoribuku.create');
    }

    public function store(Request $request)
    {
    	$simpan = new KategoriBuku;
        if (KategoriBuku::where('kategoribuku', $request['kategoribuku'])->first()) {
            
            return redirect('datakategoribuku/create')->withInput()->with('message_failed', 'Maaf, Kategori ' . $request->get('kategoribuku') . '  Buku sudah ada.');
            
        }
        else {
            $simpan->kategoribuku = $request->get('kategoribuku');
        }
    	
    	$simpan->save();
    	return redirect('datakategoribuku/create')->with('message_success', 'Data Kategori Buku Berhasil Ditambahkan');
    }

    public function edit($id)
    {
    	$datakategoribuku = KategoriBuku::find($id);
    	return view('admin.datakategoribuku.edit',compact('datakategoribuku'));
    }
    
    public function update($id,Request $request)
    {
    	$simpan = KategoriBuku::find($id);
    	$existingKategoriBuku = KategoriBuku::where('kategoribuku', $request['kategoribuku'])
            ->where('id_kategoribuku', '!=', $id)
            ->first();

        if ($existingKategoriBuku) {
            return redirect('datakategoribuku/' . $id . '/edit')
                ->withInput()
                ->with('message_failed', 'Maaf, Kategori Buku ' . $request->get('kategoribuku') . ' sudah ada.');
        } else {
            $simpan->kategoribuku = $request->get('kategoribuku');
        }
    	$simpan->save();
    	return redirect('datakategoribuku/' . $id . '/edit')->with('message_success', 'Data Kategori Buku Berhasil Diubah');

    }

    public function destroy($id)
    {
        $cek = Buku::where('id_kategoribuku','=',$id)->count();
        if($cek == 0)
        {
        	$delete = KategoriBuku::findOrFail($id);
        	$delete->delete();
        	return redirect('datakategoribuku')->with('message_success', 'Data Kategori Buku Berhasil Dihapus');
        }
        else
        {
            return redirect('datakategoribuku')->with('message_failed', 'Data Kategori Buku Tidak Boleh Dihapus Karena Memiliki Hubungan Dengan Data Buku');
        }
    }
}
