<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Pengajuan Alat</h3>

            <div class="box-tools pull-right">
			<?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '3') {
                //echo button('load_silent("pengajuan/pengajuan_Alat/cetak/","#content")','  Export PDF','btn btn-warning','data-toggle="tooltip" title="Export PDF" target="_blank"');
				echo "<a class='btn btn-primary' href='pengajuan/pengajuan_Alat/cetak/' target='_blank'>Unduh Data</a>";
              } else {
                # code...
              }
              ?>
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '3' || $sesi == '4' || $sesi == '5'|| $sesi == '7') {
                echo button('load_silent("pengajuan/pengajuan_alat/form/base","#modal")','Tambah Pengajuan Alat','btn btn-success');
              } else {
                # code...
              }
              ?>
            </div>
          </div>
          <div class="box-body">
            <table width="100%" id="alat" class="table table-striped">
              <thead>
                <th>No</th>
                <th>Id Periode</th>
                <th>Pengaju</th>
                <th>Nama Alat</th>
                <th>Jumlah</th>
                <th>Harga Satuan</th>
                <th>Status</th>
                <th>Act</th>
              </thead>
              <tbody>
          <?php 
          $i = 1;
          foreach($pengajuan_alat->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->id_periode?></td>
            <td align="center"><?=$row->pengaju?></td>
            <td align="center"><?=$row->nama_alat?></td>
            <td align="center"><?=$row->jumlah?></td>
            <td align="center">Rp. <?=number_format($row->harga_satuan)?></td>
            <td align="center"><span class="badge bg-green">Ada</span></td>
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '3' || $sesi == '4' || $sesi == '5'|| $sesi == '7') {
                echo button('load_silent("pengajuan/pengajuan_alat/form/sub/'.$row->id_pengajuan.'","#modal")','','btn btn-info fa fa-edit','data-toggle="tooltip" title="Edit"');
              } else {
                # code...
              }
              ?>
              <?php echo button('load_silent("pengajuan/pengajuan_alat/delete/'.$row->id_pengajuan.'","#content")','','btn btn-danger fa fw fa-trash','data-toggle="tooltip" title="Hapus"');?>
            </td>
          
        <?php endforeach;?>
        
        </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
<script type="text/javascript">
  $(document).ready(function() {
    var table = $('#alat').DataTable( {
      "ordering": true,
      dom: 'Bfrtip',
      buttons: [
          'copy', 'csv', 'excel', 'pdf', 'print'
      ]
    } );
  });
</script>