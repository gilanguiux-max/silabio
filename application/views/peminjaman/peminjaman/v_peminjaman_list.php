<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
    <div class="row">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">List Peminjaman [<?php echo $ket ?>]</h3>

            <div class="box-tools pull-right">
			<?php
				$sesi = from_session('level');
				if ($sesi == '1' || $sesi == '3') {
					if($isi == 'index'){
						//echo button('load_silent("pengajuan/pengajuan_bahan/pdf/'.'","#content")','  Export PDF','btn btn-warning fa fw fa-file','data-toggle="tooltip" title="Export PDF"');
						echo "<a class='btn btn-primary' href='peminjaman/peminjaman/cetak_peminjaman/' target='_blank'>Unduh Data</a>";
					}
					else if($isi == 'kelola'){
						echo "<a class='btn btn-primary' href='peminjaman/peminjaman/cetak_kelola/' target='_blank'>Unduh Data</a>";
					}
					else if($isi == 'jatuh_tempo'){
						echo "<a class='btn btn-primary' href='peminjaman/peminjaman/cetak_jatuh_tempo/' target='_blank'>Unduh Data</a>";
					}
					else if($isi == 'kelola_peminjaman'){
						echo "<a class='btn btn-primary' href='peminjaman/peminjaman/cetak_kelola_peminjaman/' target='_blank'>Unduh Data</a>";
					}
					else if($isi == 'kelola_penggantian'){
						echo "<a class='btn btn-primary' href='peminjaman/peminjaman/cetak_kelola_penggantian/' target='_blank'>Unduh Data</a>";
					}
				} else {
					# code...
				}
				?>
            <?php
              $sesi = from_session('level');
              if ($sesi == '1' || $sesi == '2') {
                echo button('load_silent("peminjaman/peminjaman/formAdd","#content")','Tambah peminjaman','btn btn-success');
              } else {
                # code...
              }
              ?>
            </div>
          </div>
          <div class="box-body">
            <table width="100%" id="tableku" class="table table-striped">
              <thead>
                <th width="5%">No</th>
                <th>Jenis</th>
                <th>No Peminjaman</th>
                <th>Status Peminjam</th>
                <th>Id Peminjam</th>
                <th>Peminjam</th>
                <th>Tgl pinjam</th>
                <th>Tgl pengembalian</th>
                <th></th>
              </thead>
              <tbody>
          <?php 
          $i = 1;
          foreach($peminjaman->result() as $row): 
          ?>
          <tr>
            <td align="center"><?=$i?></td>
            <td align="center"><?=($row->jenis_pinjaman==1)?'Peminjaman':'Praktikum'?></td>
            <td align="center"><?=$row->no_peminjaman?></td>
            <td align="center"><?=status_peminjam($row->status_peminjam)?></td>
            <td align="center"><?=$row->id_peminjam?></td>
            <td align="center"><?=$row->peminjam?></td>
            <td align="center"><?=$row->tgl.' '.$row->jam_pinjam?></td>
            <td align="center"><?=$row->tgl_kembali.' '.$row->jam_kembali?></td>
            <td align="center">
            
            <?=button('load_silent("peminjaman/peminjaman/detail/'.$row->id.'","#content")','Detail','btn btn-xs btn-primary');?>
            <?=button('load_silent("peminjaman/peminjaman/formEdit/'.$row->id.'","#content")','Edit','btn btn-xs btn-success');?>
            <?php if($row->status<1){ ?>
              <?=button('load_silent("peminjaman/peminjaman/hapuspeminjaman/'.$row->id.'","#content")','Hapus','btn btn-xs btn-danger');?>
            <?php } ?>
            </td>
          </tr>

        <?php $i++; endforeach;?>
        </tbody>
            </table>
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