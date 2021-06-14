<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Master Nama Alat</h3>

            <div class="box-tools pull-right">
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2' || $sesi == '4') {
                echo button('load_silent("master/nama_alat/show_addForm","#content")','Tambah Nama Alat','btn btn-success');
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
                <th>Kode</th>
                <th>Nama Alat</th>
                <th>Gambar</th>
                <th>Keterangan</th>
                <th>Act</th>
              </thead>
              <tbody>
          <?php 
          $i = 1;
          foreach($nama_alat->result() as $row):
            $avatar = parse_avatar_benda($row->gambar,$row->kode,75,'');       
          ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->kode?></td>
            <td align="center"><?=$row->nama_alat?></td>
            <td align="center"><?=$avatar?></td>
            <td align="center"><?=$row->keterangan?></td>
            <td align="center">
            <?php
                $sesi = from_session('level');
                if ($sesi == '1' || $sesi == '2' || $sesi == '4') {
                    echo button('load_silent("master/nama_alat/show_editForm/'.$row->id.'","#content")','','btn btn-info fa fa-edit','data-toggle="tooltip" title="Edit"');
                } else {
                    # code...
                }
                ?>
                <?php echo button('load_silent("master/nama_alat/delete/'.$row->id.'","#content")','','btn btn-danger fa fw fa-trash','data-toggle="tooltip" title="Hapus"');?>  
                
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