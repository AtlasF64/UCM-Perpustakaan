<?php

namespace App\Http\Controllers;
use App\RakBuku;
use App\Buku;
use Illuminate\Http\Request;

class RakBukuController extends Controller
{
    public function index()
    {
    	$datarakbuku = RakBuku::orderby('id_rakbuku','ASC')->get();
    	return view('admin.datarakbuku.index',compact('datarakbuku'));
    }

    public function create()
    {
    	return view('admin.datarakbuku.create');
    }

    public function store(Request $request)
    {
    	$simpan = new RakBuku;
    	if (RakBuku::where('rakbuku', $request['rakbuku'])->first()) {
            
            return redirect('datarakbuku/create')->withInput()->with('message_failed', 'Maaf, Rak Buku ' . $request->get('rakbuku') . '  sudah ada.');
            
        }
        else {
            $simpan->rakbuku = $request->get('rakbuku');
        }
    	$simpan->save();
    	return redirect('datarakbuku/create')->with('message_success', 'Data Genre Buku Berhasil Ditambahkan');
    }

    public function edit($id)
    {
    	$datarakbuku = RakBuku::find($id);
    	return view('admin.datarakbuku.edit',compact('datarakbuku'));
    }
    
    public function update($id,Request $request)
    {
    	$simpan = RakBuku::find($id);
    	$existingRakBuku = RakBuku::where('rakbuku', $request['rakbuku'])
            ->where('id_rakbuku', '!=', $id)
            ->first();

        if ($existingRakBuku) {
            return redirect('datarakbuku/' . $id . '/edit')
                ->withInput()
                ->with('message_failed', 'Maaf, Rak Buku ' . $request->get('rakbuku') . ' sudah ada.');
        } else {
            $simpan->rakbuku = $request->get('rakbuku');
        }
    	$simpan->save();
    	return redirect('datarakbuku/' . $id . '/edit')->with('message_success', 'Data Genre Buku Berhasil Diubah');

    }

    public function destroy($id)
    {
    	$delete = RakBuku::findOrFail($id);
    	$delete->delete();
    	return redirect('datarakbuku')->with('message_success', 'Data Genre Buku Berhasil Dihapus');
    }
}
