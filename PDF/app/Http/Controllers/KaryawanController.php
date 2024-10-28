<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade\Pdf; //mengimport DomPDF
use Illuminate\Support\Facades\DB; //mengimport DataBase

class KaryawanController extends Controller
{
    public function index(){
        //fungsinya sama seperti SELECT * FROM
        $karyawan = DB::table('tbl_pegawai')->get();
        //nama folder "karyawan" dan file "index.blade.php"
        return view('karyawan.index',['tampil' => $karyawan]);
    }

    public function pdf(){
        //fungsinya sama seperti SELECT * FROM
        $karyawan = DB::table('tbl_pegawai')->get();
        
        $pdf = PDF::loadView('karyawan.pdf',['tampil' => $karyawan]);
        return $pdf->download('data-karyawan.pdf');
    }
}
