<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php require_once ('application/views/dasbord.php') ?>  
    <div class="col-lg-12">
        <div class="box box-primary">
            <div class="box-header with-border">
            <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
              </div>
            <h3 class="box-title">Pengelolaan Bahan Laboratorium Silabio</h3>

            <div class="box-tools pull-right">
            </div>
            </div>
            <div class="box-body">
            <table width="100%" id="tableku" class="table table-striped">
                <thead>
                    <th>No</th>
                    <th>Nama Bahan</th>
                    <th>Nama Satuan</th>
                    <th>Kategori</th>
                    <th>Stock</th>
                    <th>Lokasi</th>
                    <th>Jenis Bahan</th>
                    <th>Keterangan</th>
                    <th></th>
                </thead>
                <tbody>
                <?php 
                $i = 1;
                foreach($kelola_bahan->result() as $row):?>
                    <tr>
                        <td align="center"><?=$i++?></td>
                        <td align="center"><?=$row->nama_bahan?></td>
                        <td align="center"><?=$row->nama_satuan?></td>
                        <td align="center"><?=$row->kategori_alat_bahan?></td>
                        <td align="center"><?=$row->stock?></td>
                        <td align="center"><?=$row->Nama_penyimpanan?></td>
                        <td align="center"><span class="badge bg-blue"><?=$row->kondisi?></span></td> 
                        <td align="center"><?=$row->keterangan?></td>
                        <td align="center">
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