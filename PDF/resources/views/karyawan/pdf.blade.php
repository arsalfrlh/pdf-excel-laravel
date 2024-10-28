<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <h1>Daftar Karyawan</h1>
        <table class="table table-sm">
            <thead>
              <tr>
                <th scope="col">No</th>
                <th scope="col">Nama</th>
                <th scope="col">Email</th>
                <th scope="col">Alamat</th>
                <th scope="col">Telepon</th>
                <th scope="col">Pekerjaan</th>
              </tr>
            </thead>
            <tbody>
                @php
                    $no = 1;
                @endphp
                @foreach ($tampil as $karyawan)
                    
                @endforeach
              <tr>
                <th scope="row">{{ $no++ }}</th>
                <td>{{ $karyawan->nama }}</td>
                <td>{{ $karyawan->email }}</td>
                <td>{{ $karyawan->alamat }}</td>
                <td>{{ $karyawan->telepon }}</td>
                <td>{{ $karyawan->pekerjaan }}</td>
              </tr>
            </tbody>
          </table>
    </div>
</body>
</html>