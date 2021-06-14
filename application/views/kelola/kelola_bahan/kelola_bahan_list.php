<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="row">
    <div class="col-lg-12">
        <div class="box box-primary">
            <div class="box-header with-border">
            <h3 class="box-title">Pengelolaan Bahan Laboratorium Silabio</h3>

            <div class="box-tools pull-right">
			<?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '3') {
                //echo button('load_silent("pengajuan/pengajuan_Alat/cetak/","#content")','  Export PDF','btn btn-warning','data-toggle="tooltip" title="Export PDF" target="_blank"');
				echo "<a class='btn btn-primary' href='kelola/kelola_bahan/cetak/' target='_blank'>Unduh Data</a>";
              } else {
                # code...
              }
              ?>
            <?php
                $sesi = from_session('level');
                if ($sesi == '1' || $sesi == '4') {
                echo button('load_silent("kelola/kelola_bahan/form/base","#modal")','Tambah kelola bahan','btn btn-success');
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
                    <th>Nama Bahan</th>
                    <th>Jenis</th>
                    <th>Tahun</th>
                    <th>Kategori</th>
                    <th>Stock</th>
                    <th>Stock dipinjam</th>
                    <th>Stock Habis</th>
                    <th>Stock Ada</th>
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
                foreach($kelola_bahan->result() as $row):?>
                <?php 
				$avatar = parse_avatar_benda($row->gambar,$row->nama_bahan,75,'');
                if($row->kondisi==1){
                    $badge="bg-green";//
                  }else if($row->kondisi==2){
                    $badge="bg-blue";//
                  }else if($row->kondisi==3){
                    $badge="bg-teal";//
                  }else if($row->kondisi==4){
                    $badge="bg-yellow";//
                  }else{
                    $badge="bg-red";//
                  } 
                 ?>
                <?php 
                $stok_real=$row->stock-@$data_peminjaman[$row->id]-@$data_hapus[$row->id];
                $bg='class="default"';
                if($stok_real<$row->stock_minimal){
                    $bg='class="danger"';
                }
                ?>
                    <tr <?php echo $bg ?>>
                        <td align="center"><?=$i++?></td>
                        <td align="center"><?=$row->nama_bahan.' '.$row->nama_satuan?></td>
                        <td align="center"><?=($row->jenis==1)?'Habis Pakai':'Non Habis Pakai'?></td>
                        <td align="center"><?=$row->tahun?></td>
                        <td align="center"><?=$row->kategori_alat_bahan?></td>
                        <td align="center"><?=$row->stock?></td>
                        <td align="center">
                        <?php
                        if(isset($data_peminjaman[$row->id])){
                          echo button('load_silent("kelola/kelola_bahan/listpinjam/pinjam/'.$row->id.'","#modal")',@$data_peminjaman[$row->id],'btn btn-info','data-toggle="tooltip" title="Edit"');
                        }
                        ?>
                        </td>
                        <td align="center">
                        <?php
                        if(isset($data_hapus[$row->id])){
                          echo button('load_silent("kelola/kelola_bahan/listpinjam/hapus/'.$row->id.'","#modal")',@$data_hapus[$row->id],'btn btn-info','data-toggle="tooltip" title="Edit"');
                        }
                        ?>
                        </td>
                        
                        <td align="center"><?=$stok_real?></td>
                        <td align="center"><?=$row->stock_minimal?></td>
                        <td align="center"><?=$row->Nama_penyimpanan?></td>
                        <td align="center"><?=$row->sumber_pendanaan?></td>
                        <td align="center">Rp. <?=number_format($row->harga)?></td>
                        <td align="center"><span class="badge <?php echo $badge?>"><?=$row->kond?></span></td> 
						<td align="center"><?=$avatar?></td>
                        <td align="center"><?=$row->keterangan?></td>
                        <td align="center">
                        <?php
                        $sesi = from_session('level');
                        if ($sesi == '1' || $sesi == '4') {
                            echo button('load_silent("kelola/kelola_bahan/form/sub/'.$row->id.'","#modal")','','btn btn-info fa fw fa-edit','data-toggle="tooltip" title="Edit"');
                        } else {
                            # code...
                        }
                        ?>
                        
                        <?php echo button('load_silent("kelola/kelola_bahan/delete/'.$row->id.'","#content")','','btn btn-danger fa fw fa-trash','data-toggle="tooltip" title="Hapus"');?>
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
      "ordering": false,
      "scrollX": true
    } );
  });
</script>