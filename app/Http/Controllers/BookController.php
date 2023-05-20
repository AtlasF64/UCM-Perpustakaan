<?php

namespace App\Http\Controllers;
use App\Buku;
use Illuminate\Http\Request;

class BookController extends Controller
{
    public function index()
    {
    	$databuku = Buku::orderby('id_buku','DESC')->get();
    	return view('admin.databuku.index',compact('databuku'));
    }

    public function create()
    {
    	return view('admin.databuku.add');
    }

    public function store(Request $request)
    {
    	
    }

    public function edit($id)
    {
    	
    }

    public function update($id,Request $request)
    {
    	
    }

    public function destroy($id)
    {
    	
    }
}
