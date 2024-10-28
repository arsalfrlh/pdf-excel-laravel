<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use Faker\Factory as Palsu; //mengimport Faker menjadi palsu
use App\Models\Pegawai; //mengimport Model

class PegawaiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //menyimpan data ke $palsu dengan id Indonesia
        $palsu = Palsu::create('id_ID');

        //$i akan berulang terus sampai 20x
        for($i = 1; $i <= 20; $i++){
            //model "Pegawai"|INSERT INTO
            Pegawai::create([
                'nama' => $palsu->name, //kolom nama pada databse|name data palsu dari faker
                'email' => $palsu->email,
                'alamat' => $palsu->address,
                'telepon' => $palsu->phoneNumber,
                'pekerjaan' => 'karyawan'
            ]);
        }
    }
}
