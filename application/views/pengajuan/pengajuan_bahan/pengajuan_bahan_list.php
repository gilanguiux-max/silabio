<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    <div class="row" id="form_pembelian">
        <div class="col-lg-12">
            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title">Pengajuan Bahan</h3>

                    <div class="box-tools pull-right">
                    <?php
                    $sesi = from_session('level');
                    if ($sesi == '1' || $sesi == '3') {
                        //echo button('load_silent("pengajuan/pengajuan_bahan/pdf/'.'","#content")','  Export PDF','btn btn-warning fa fw fa-file','data-toggle="tooltip" title="Export PDF"');
						echo "<a class='btn btn-primary' href='pengajuan/pengajuan_bahan/cetak/' target='_blank'>Unduh Data</a>";
                    } else {
                        # code...
                    }
                    ?>
                    <?php
                    $sesi = from_session('level');
                    if ($sesi == '1' || $sesi == '3' || $sesi == '4' || $sesi == '5'|| $sesi == '7') {
                        echo button('load_silent("pengajuan/pengajuan_bahan/form/base","#modal")','Tambah Pengajuan Bahan','btn btn-success');
                    } else {
                        # code...
                    }
                    ?>
                    </div>
                </div>
                <div class="box-body">
                    <table width="100%" id="pengajuan" class="table table-striped">
                        <thead>
                            <th>No</th>
                            <th>Id Periode</th>
                            <th>Pengaju</th>
                            <th>Nama Bahan</th>
                            <th>Jenis Bahan</th>
                            <th>Jumlah</th>
                            <th>Harga Satuan</th>
                            <th>Status</th>
                            <th>Act</th>
                        </thead>
                        <tbody>
                        </tbody>
                        <?php 
                        $i = 1;
                        foreach($pengajuan_bahan->result() as $row): ?>
                        <tr>
                            <td align="center"><?=$i++?></td>
                            <td align="center"><?=$row->id_periode?></td>
                            <td align="center"><?=$row->pengaju?></td>
                            <td align="center"><?=$row->nama_bahan?></td>
                            <td align="center"><?=$row->jenis_bahan?></td>
                            <td align="center"><?=$row->jumlah?></td>
                            <td align="center">Rp. <?=number_format($row->harga_satuan)?></td>
                            <td align="center"><span class="badge bg-green">Ada</span></td>
                            <td align="center">
                            <?php
                            $sesi = from_session('level');
                            if ($sesi == '1' || $sesi == '3' || $sesi == '4' || $sesi == '5'|| $sesi == '7') {
                                echo button('load_silent("pengajuan/pengajuan_bahan/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fa-edit','data-toggle="tooltip" title="Edit"');
                            } else {
                                # code...
                            }
                            ?>
                            <?php echo button('load_silent("pengajuan/pengajuan_bahan/delete/'.$row->id.'","#content")','','btn btn-danger fa fw fa-trash','data-toggle="tooltip" title="Hapus"');?>
                            </td>
                        </tr>

                        <?php endforeach;?>
                    </table>
                </div>
            </div>
        </div>
    </div>
<script type="text/javascript">
  $(document).ready(function() {
    var table = $('#pengajuan').DataTable( {
      "ordering": false,
    } );
  });
</script>