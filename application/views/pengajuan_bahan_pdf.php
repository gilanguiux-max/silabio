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
                
                </span>
                <p align="center">
                </br>
            </td>
        </tr>
    </table>
<hr class="Line-title"> 
    <p align="center">
        PENGAJUAN BAHAN</br>
    </p>
    <p align="center">
    <b>TAHUN 2020 </b>
    </p>
    <table style="width: 100%;"  class="table table-bordered table-hover">
        <tr>
            <th>No.</th>
            <th>Id Periode</th>
            <th>pengaju</th>
            <th>Nama Bahan</th>
            <th>Jenis Bahan</th>
            <th>Harga Satuan</th>
            <th>Jumlah</th>
            <th>Total</th>
        </tr>
        <?php 
          $i = 1;
          foreach($pengajuan_bahan as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->id_periode?></td>
            <td align="center"><?=$row->pengaju?></td>
            <td align="center"><?=$row->nama_bahan?></td>
            <td align="center"><?=$row->jenis_bahan?></td>
            <td align="center">Rp. <?=number_format($row->harga_satuan)?></td>
            <td align="center"><?=$row->jumlah?></td>
            <td align="center">Rp. <?=number_format($row->total)?></td>
        <?php endforeach;?>
    </table>
</body>
</html>