<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Pegawai extends Model
{
    //agar laravel membaca tabel pada database dengan nama "tbl_pegawai" bukan pegawais
    protected $table = "tbl_pegawai";

    //kolom pada database yang diperbolehkan di isi
    protected $fillable = ['nama','email','alamat','telepon','pekerjaan'];
}
