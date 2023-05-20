<?php

namespace App\Http\Controllers;
use App\GenreBuku;
use Illuminate\Http\Request;

class GenreBookController extends Controller
{
    public function index()
    {
    	$datagenrebuku = GenreBuku::orderby('id_genrebuku','ASC')->get();
    	return view('admin.datagenrebuku.index',compact('datagenrebuku'));
    }

    public function create()
    {
    	return view('admin.datagenrebuku.create');
    }

    public function store(Request $request)
    {
    	$simpan = new GenreBuku;
    	$simpan->genrebuku = $request->get('genrebuku');
    	$simpan->save();
    	return redirect('datagenrebuku/create')->with('message_success', 'Data Genre Buku Berhasil Ditambahkan');
    }

    public function edit($id)
    {
    	$datagenrebuku = GenreBuku::find($id);
    	return view('admin.datagenrebuku.edit',compact('datagenrebuku'));
    }
    
    public function update($id,Request $request)
    {
    	$simpan = GenreBuku::find($id);
    	$simpan->genrebuku = $request->get('genrebuku');
    	$simpan->save();
    	return redirect('datagenrebuku/' . $id . '/edit')->with('message_success', 'Data Genre Buku Berhasil Diubah');

    }

    public function destroy($id)
    {
    	$delete = GenreBuku::findOrFail($id);
    	$delete->delete();
    	return redirect('datagenrebuku')->with('message_success', 'Data Genre Buku Berhasil Dihapus');
    }
}
