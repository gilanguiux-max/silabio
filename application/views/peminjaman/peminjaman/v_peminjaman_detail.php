<div class="box box-default">
      <div class="box-header with-border">
        <h3 class="box-title">Detail Peminjam <br>
		ID Peminjam : <?=$peminjam->id?><br>
        [<?php echo status_peminjam($peminjam->status_peminjam) ?>] a.n. <?=$peminjam->peminjam?> <?=$peminjam->jen_id?>:<?php echo $peminjam->id_peminjam ?> <br>
        <?=($peminjam->jenis_pinjaman==1)?'Kontak':'MK'?> : <?=$peminjam->kontak?> <br>
        <?=($peminjam->jenis_pinjaman==1)?'Instansi':'Materi'?> : <?=$peminjam->kontak?><br> 
        Tanggal Pinjam : <?=$peminjam->tgl?> <?=$peminjam->jam_pinjam?> <br>
        Tanggal Kembali : <?=$peminjam->tgl_kembali?> <?=$peminjam->jam_kembali?></h3>

        <div class="box-tools pull-right">
          <button type="button" id="tutup" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
        </div>
      </div>
      <!-- /.box-header -->
      <div class="box-body">
		<div class="box-tools pull-right">
			<?php echo button('load_silent("peminjaman/peminjaman/import_alatbahan/'.$peminjam->id.'","#modal")', 'Import Data Alat dan Bahan', 'btn btn-warning');?>
		</div>
		<br><br>
          <div class="row">
            <div class="col-md-6">
                <table width="100%" id="tableku" class="table table-bordered table-striped" style="font-size: smaller;">
                <thead>
                  <tr>
                  <th width="5%">#</th>
                    <th width="35%">Bahan</th>
                    <th width="15%">Kondisi</th>
                    <th width="5%">tahun</th>
                    <th width="5%">Qty</th>
                    <th width="5%">Status</th>
                    <th width="15%">Act</th>
                    
                  </tr>
                </thead>
                <tbody id="dataTbl">
                <?php 
                $y = 1;
                foreach($bahanlist->result() as $row): 
                ?>
                  <tr>
                    <td><?=$y?></td>
                    <td><?=$row->nama_bahan?></td>
                    <td><?=$row->kondisi?></td>
                    <td><?=$row->tahun?></td>
                    <td>
                    <?=$row->qty>0?'Pinjam:'.$row->qty:''?>
                    <?=$row->qty_hapus>0?'Jual/Habis:'.$row->qty_hapus:''?>

                    </td> 
                    <td>
                    <span class="badge <?php echo badge_peminjaman($row->status)?>"><?=status_peminjaman($row->status)?></span>
                   
                    </td>   

                    <td>
                    <?php if($peminjam->status>0){ ?>
                    <?php if($row->status>1){
                    echo button('load_silent("peminjaman/peminjaman/refresh/1/'.$peminjam->id.'/'.$row->id.'","#content")','','btn btn-xs btn-primary fa fa-refresh','data-toggle="tooltip" data-placement="top" title="Reset Status"');
                    }else{ ?>
                    <?=button('load_silent("peminjaman/peminjaman/kembalikan/1/'.$peminjam->id.'/'.$row->id.'","#content")','','btn btn-xs btn-primary fa fa-check','data-toggle="tooltip" data-placement="top" title="Kembalikan"');?>
                    <?=button('load_silent("peminjaman/peminjaman/cekrusak/1/'.$peminjam->id.'/'.$row->id.'","#content")','','btn btn-xs btn-danger fa fa-close','data-toggle="tooltip" data-placement="top" title="Cek sebagai rusak"');?>
                    <?=button('load_silent("peminjaman/peminjaman/kembalisebagian/base/bahan/'.$peminjam->id.'/'.$row->id.'","#modal")','','btn btn-xs btn-info fa fa-adjust','data-toggle="tooltip" title="Kembalikan Sebagian"');?>
                    <?php 
                        } 
                     }
                    ?>
                    </td>                  
                  </tr>
                  <?php $y++; endforeach;?>
                </tbody>
              </table>             
            </div>
            <div class="col-md-6">
                <table width="100%" id="tableku" class="table table-bordered table-striped" style="font-size: smaller;">
                <thead>
                  <tr>
                    <th width="5%">#</th>
                    <th width="35%">Alat</th>
                    <th width="15%">Kondisi</th>
                    <th width="5%">tahun</th>
                    <th width="5%">Qty</th>
                    <th width="5%">Status</th>
                    <th width="15%">Act</th>
                  </tr>
                </thead>
                <tbody id="dataTbl">
                <?php 
                $z = 1;
                foreach($alatlist->result() as $raw): 
                ?>
                  <tr>
                    <td><?=$z?></td>
                    <td><?=$raw->nama_alat?></td>
                    <td><?=$raw->kondisi?></td>
                    <td><?=$raw->tahun?></td>
                    <td><?=$raw->qty?></td> 
                    <td>
                    <span class="badge <?php echo badge_peminjaman($raw->status)?>"><?=status_peminjaman($raw->status)?></span>
                    <?php 
                    
                    ?>
                    </td>                      
                    <td>
                    <?php 
                    if($peminjam->status>0){ 
                    if($raw->status>1){
                    echo button('load_silent("peminjaman/peminjaman/refresh/2/'.$peminjam->id.'/'.$raw->id.'","#content")','','btn btn-xs btn-primary fa fa-refresh','data-toggle="tooltip" data-placement="top" title="Reset Status"');
                    }else{ ?>
                    <?=button('load_silent("peminjaman/peminjaman/kembalikan/2/'.$peminjam->id.'/'.$raw->id.'","#content")','','btn btn-xs btn-primary fa fa-check','data-toggle="tooltip" data-placement="top" title="Kembalikan"');?>
                    <?=button('load_silent("peminjaman/peminjaman/cekrusak/2/'.$peminjam->id.'/'.$raw->id.'","#content")','','btn btn-xs btn-danger fa fa-close','data-toggle="tooltip" data-placement="top" title="Cek sebagai rusak"');?>
                    <?php }
                    }
                    ?>
                    </td>                    
                    
                  </tr>
                  <?php $z++; endforeach;?>
                </tbody>
              </table>             
            </div>
          </div>

        </div>
        <div class="box-footer">
        <?php if($peminjam->status==0){ ?>
          <?=button('load_silent("peminjaman/peminjaman/","#content")','Kembali','btn btn-primary btn pull-left');?>
          <?=button('load_silent("peminjaman/peminjaman/setujui/'.$peminjam->id.'","#content")','Setujui Peminjaman','btn btn-success btn pull-right');?>
        <?php }else{ ?>
          <?=button('load_silent("peminjaman/peminjaman/kelola","#content")','Kembali','btn btn-primary btn pull-left');?>
          <?php echo button_confirm("Anda yakin Mengembalikan peminjaman : ".$peminjam->peminjam."?","peminjaman/peminjaman/kembalikanAll/".$peminjam->id,"#content",'Kembalikan Semua Peminjaman','btn btn-warning btn pull-right','data-toggle="tooltip" title="Kembalikan Semua Peminjaman"');?>
          
        <?php } ?>
        </div>
    </div>