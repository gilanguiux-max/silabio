<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Pengelolaan Alat Laboratorium Silabio</h3>

            <div class="box-tools pull-right">
			<?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '3') {
                echo "<a class='btn btn-primary' href='kelola/kelola_alat/cetak/' target='_blank'>Unduh Data</a>";
              } else {
                # code...
              }
              ?>
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '4') {
                echo button('load_silent("kelola/kelola_alat/form/base","#modal")','Tambah kelola alat','btn btn-success');
              } else {
                # code...
              }
              ?>
            </div>
          </div>
          <div class="box-body">
            <table width="100%" id="tableku" class="table table-striped">
              <thead>
                <th>No</th>
                <th>Nama Alat</th>
                <th>Nama Satuan</th>
                <th>Kategori</th>
                <th>Stock</th>
                <th>Stock Dipinjam</th>
                <th>Stock Tersedia</th>
                <th>Stock Minimal</th>
                <th>Lokasi</th>
                <th>Pendanaan</th>
                <th>Harga</th>
                <th>Kondisi</th>
				<th>Gambar</th>
                <th>Keterangan</th>
                <th>Act</th>
              </thead>
              <tbody>
          <?php 
          $i = 1;
          foreach($kelola_alat->result() as $row): ?>
          <?php 
		  $avatar = parse_avatar_benda($row->gambar,$row->nama_alat,75,'');
          if($row->kondisi==1){
            $badge="bg-green";//
            $kondisi="Sangat Baik";
          }else if($row->kondisi==2){
            $badge="bg-blue";//
            $kondisi="Baik";
          }else if($row->kondisi==3){
            $badge="bg-teal";//
            $kondisi="Cukup";
          }else if($row->kondisi==4){
            $badge="bg-yellow";//
            $kondisi="Kurang";
          }else{
            $badge="bg-red";//
            $kondisi="Rusak";
          } 
          $stocktersedia=$row->stok-@$data_peminjaman[$row->id];
          $bg='class="default"';
          if($stocktersedia<$row->stok_minimal){
              $bg='class="danger"';
          }
          ?>
          
          <tr <?php
          
          echo $bg ?> >
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->nama_alat?></td>
            <td align="center"><?=$row->nama_satuan?></td>
            <td align="center"><?=$row->kategori_alat_bahan?></td>
            <td align="center"><?=$row->stok?></td>
            <!-- Dipinjam -->
            <td align="center">
            <?php
            if(isset($data_peminjaman[$row->id])){
              echo button('load_silent("kelola/kelola_alat/listpinjam/pinjam/'.$row->id.'","#modal")',@$data_peminjaman[$row->id],'btn btn-info','data-toggle="tooltip" title="Edit"');
            }
            ?>
            </td>
            <td align="center"><?=$stocktersedia?></td>
            <td align="center"><?=$row->stok_minimal?></td>
            <td align="center"><?=$row->Nama_penyimpanan?></td>
            <td align="center"><?=$row->sumber_pendanaan?></td>
            <td align="center">Rp. <?=number_format($row->harga)?></td>
            <td align="center"><span class="badge <?php echo $badge?>"><?= $kondisi?></span></td>
			<td align="center"><?=$avatar?></td>
            <td align="center"><?=$row->keterangan?></td>
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '4') {
                echo button('load_silent("kelola/kelola_alat/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fw fa-edit','data-toggle="tooltip" title="Edit"');
              } else {
                # code...
              }
              ?>
              
              <?php echo button('load_silent("kelola/kelola_alat/delete/'.$row->id.'","#content")','','btn btn-danger fa fw fa-trash','data-toggle="tooltip" title="Hapus"');?>
            </td>
          </tr>

        <?php endforeach;?>
        </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
<script type="text/javascript">
  $(document).ready(function() {
    var table = $('#tableku').DataTable( {
      "ordering": true,
	  "scrollX": true
    } );
  });
</script>