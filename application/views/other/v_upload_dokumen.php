<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
    <div class="row">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Upload Dokumen</h3>

            <div class="box-tools pull-right">
				<?php
					$sesi = from_session('level');
					if ($sesi == '1' || $sesi == '2') {
						echo button('load_silent("other/upload_dokumen/form","#modal")','Tambah Dokumen','btn btn-success');
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
                <th>Nama Dokumen</th>
				<th>Tipe File</th>
                <th>Tgl Upload</th>
                <th>File Dokumen</th>
				<th>Act</th>
              </thead>
              <tbody>
          <?php
          $i = 1;
          foreach($dokumen->result() as $row):
			$info = pathinfo($row->files);
          ?>
          <tr>
            <td align="center"><?=$i?></td>
            <td align="center"><?=$row->nama?></td>
			<td align="center"><?php echo $info['extension'];?>
			<td align="center"><?=$row->tgl?></td>
            <td align="center"><?php echo ($info['extension'] != 'docx') ? button('load_silent("other/upload_dokumen/show_document/'.$row->id.'","#content")','Lihat Dokumen', '') : "File docx tidak dapat ditampilkan";?></td>
			<td align="center">
				<?php echo "<a class='btn btn-success fa fw fa-download' href='".$row->files."' data-toggle='tooltip' title='Download' target='_blank'></a>";?>
				<?php echo button('load_silent("other/upload_dokumen/delete_data/'.$row->id.'","#content")','','btn btn-danger fa fw fa-trash','data-toggle="tooltip" title="Hapus"');?>
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