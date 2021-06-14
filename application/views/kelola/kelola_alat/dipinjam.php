<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-body">
            <table width="100%">
              <thead>
                <th>No</th>
                <th>Jenis Pinjaman</th>
                <th>Nama Alat</th>
                <th>Peminjam</th>
                <th>Tanggal Pinjam</th>
                <th>Tanggal Kembali</th>
                <th>Qty Pinjam</th>
                </thead>
              <tbody>
          <?php 
          $i = 1;
          foreach($detail as $row): ?>
          
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->jenis_pinjaman?></td>
            <td align="center"><?=$row->nama_alat?></td>
            <td align="center"><?=$row->peminjam?></td>
            <td align="center"><?=$row->tgl.' '.$row->jam_pinjam?></td>
            <td align="center"><?=$row->tgl_kembali.' '.$row->jam_kembali?></td>
            <td align="center"><?=$row->qty?></td>
            
          </tr>

        <?php endforeach;?>
        </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
