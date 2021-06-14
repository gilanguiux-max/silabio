<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <title></title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" 
    integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" 
    crossorigin="anonymous">
    <style>
        .line-title{
            border: 0;
            border-style: inset;
            border-top: 2px solid #000;
        }
    </style>
</head>
<body>
    <img src="assets/img/title.png" style="width: 80px; height: auto; position: absolute;" >
    <table style="width: 100%;">
        <tr>
            <td align="center">
                <span style="line-height: 1.6; font-weight: bold;">
                SISTEM LABORATORIUM BIOLOGI TERPADU (SILABIO)
                <br>SEMARANG INDONESIA
                </span>
                <p align="center">
                </br>
            </td>
        </tr>
    </table>
<hr class="Line-title"> 
    <p align="center">
        BORANG PEMINJAMAN LABORATORIUM SILABIO</br>
    </p>
    <p align="center">
        <h6 align="center">*Harap mebawa borang ini saat pengambilan/pengembalian alat dan bahan.</h6>
    </p>
    <table style="width: 100%;"  class="table table-bordered table-hover">
        <tr>
            <th>No</th>
            <th>Kode Peminjaman</th>
            <th>Peminjam</th>
            <th>Nama Bahan</th>
            <th>Nama Alat</th>
            <th>Tanggal Peminjaman</th>
            <th>Tanggal Pengembalian</th>
            <th>Konndisi</th>
        </tr>
        <?php 
          $i = 1;
          foreach($peminjaman as $row): ?>
          <tr>
                    <td align="center"><?= $i++?></td>
                    <td align="center"><?= $row->kode_peminjaman ?></td>
                    <td align="center"><?= $row->peminjam ?></td>
                    <td align="center"><?= $row->nama_bahan ?></td>
                    <td align="center"><?= $row->nama_alat ?></td>
                    <td align="center"><?= date($row->tgl_pinjam) ?></td>
                    <td align="center"><?= date($row->tgl_pengembalian) ?></td>
                    <td align="center">
        <?php endforeach;?> 
    </table>
    <div>
    <h4>Semarang  ...,....,2020</h4>
    <p>
    <div>Laboran/Asisten Lab</br>
        </div>
    <div> TTD</br>
     </div>
    <div>(.............)</div>
    </p>
    </div>
</body>
</html>