<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class DashboardController extends Controller
{
    public function Dashboard()
    {
        // $user = Member::join('users','users.id','=','member.id')->where('status_akun','!=','0')->orderby('name','ASC')->get();
        return view('dashboard');
    }

    
    public function informasiuser()
    {
        $user = Member::join('users','users.id','=','member.id')->where('status_akun','!=','0')->orderby('name','ASC')->get();
        return view('admin.informasiuser',compact('user'));


        
        
    }
}
