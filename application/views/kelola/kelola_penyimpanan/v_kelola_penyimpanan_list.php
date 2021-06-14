<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Kelola Penyimpanan</h3>

            <div class="box-tools pull-right">
			<?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '3') {
                //echo button('load_silent("pengajuan/pengajuan_Alat/cetak/","#content")','  Export PDF','btn btn-warning','data-toggle="tooltip" title="Export PDF" target="_blank"');
				echo "<a class='btn btn-primary' href='kelola/kelola_penyimpanan/cetak/' target='_blank'>Unduh Data</a>";
              } else {
                # code...
              }
              ?>
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '4') {
                echo button('load_silent("kelola/kelola_penyimpanan/form/base","#modal")','Tambah Penyimpanan','btn btn-success');
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
                <th>Nama Penyimpanan</th>
                <th>Status</th>
                <th>Act</th>
              </thead>
              <tbody>
          <?php 
          $i = 1;
          foreach($kelola_penyimpanan->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->nama_penyimpanan?></td>
            <td align="center"> <span class="badge <?= $row->status == '1' ? 'bg-green' : 'bg-red'?>"><?= $row->status == '1' ? 'Tersedia' : 'Penuh'?></span></td>
            <td align="center">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '4') {
                echo button('load_silent("kelola/kelola_penyimpanan/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fa-edit','data-toggle="tooltip" title="Edit"');
              } else {
                # code...
              }
              ?>
             <?php echo button('load_silent("kelola/kelola_penyimpanan/delete/'.$row->id.'","#content")','','btn btn-danger fa fw fa-trash','data-toggle="tooltip" title="Hapus"');?>
              </a>
            </td>
          </tr>
 
        <?php endforeach;?>
        </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
<script type="text/javascript">
  $(document).ready(function() {
    var table = $('#tableku').DataTable( {
      "ordering": false,
    } );
  });
</script>
