(composer create-project laravel/laravel:^10.0 example-app) //untuk membuat sebuah projek laravel dengan versi 10
(php artisan make:model Pegawai -m) //untuk membuat model dan migration
(php artisan migrate) //untuk memulai migrasi dan membuat tabel beserta kolomnya
(php artisan make:seeder PegawaiSeeder) //untuk membuat seeder
(php artisan db:seed --class=PegawaiSeeder) //untuk memulai seeder dan mengisi data pada database/INSERT INTO
(composer require barryvdh/laravel-dompdf) //untuk mendownload dompdf
(php artisan make:Controller Karyawan Controller) //untuk membuat controller
