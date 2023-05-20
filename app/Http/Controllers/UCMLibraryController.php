<?php

namespace App\Http\Controllers;

use Auth;
use App\KategoriBuku;
use App\Buku;
use App\User;
use App\Peminjaman;
use App\Pengembalian;
use App\Member;
use Illuminate\Http\Request;

class UCMLibraryController extends Controller
{
    public function UCMLibrary()
    {
        if(!Auth::guest() && Auth::user()->status_akun == "0")
        {
            $kategori = KategoriBuku::count();
            $buku = Buku::count();
            $member = User::where('status_akun','!=','0')->count();
            $peminjaman = Peminjaman::count();
            $pengembalian = Pengembalian::count();
            return view('admin.home',compact('kategori','buku','member','peminjaman','pengembalian'));
        }
        else
        {
            $newbook = Buku::orderby('tahun','DESC')->take(9)->get();
            return view('ucmlibrary.ucmlibrary',compact('newbook'));
        }
    }

    public function informasiuser()
    {
        $user = Member::join('users','users.id','=','member.id')->where('status_akun','!=','0')->orderby('name','ASC')->get();
        return view('admin.informasiuser',compact('user'));
    }

    public function pengaturanakun()
    {
        return view('admin.pengaturanakun');
    }

    public function postpengaturanakun(Request $request)
    {
        $users = User::find(Auth::user()->id);
        $users->email = $request->get('email');
        if($request->get('password')!="")
        {
            $users->password = bcrypt($request->get('password'));
        }

        $users->name = $request->get('name');
        
        $users->save();
        return redirect('pengaturanakun')->with('message_success', 'Pengaturan Akun Berhasil Dilakukan');
      
    }

    public function informasiuseredit($id_member)
    {
        $user = Member::join('users','users.id','=','member.id')->where('status_akun','!=','0')->find($id_member);
        return view('admin.informasiuseredit',compact('user'));
    }

    public function postinformasiuseredit($id_member,Request $request)
    {
        $member = Member::find($id_member);
        $users = User::find($member->id);
        $users->email = $request->get('email');
        if($request->get('password')!="")
        {
            $users->password = bcrypt($request->get('password'));
        }

        $users->name = $request->get('name');
        $users->save();

        $member->nimnidnnip = $request->get('nimnidnnip');
        $member->nomortelepon = $request->get('nomortelepon');
        $member->alamat = $request->get('alamat');
        $member->save();
        return redirect('informasiuser/' . $id_member . '/edit')->with('message_success', 'Perubahan Informasi Member Berhasil Dilakukan');
    }

    
}
