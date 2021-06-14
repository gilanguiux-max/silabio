<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<div class="row">
	<div class="col-lg-12">
		<div class="box box-primary">
			<div class="box-header with-border">
			<?php
				foreach($dokumen as $row):
				$info = pathinfo($row->files);
			?>
				<h3 class="box-title">Dokumen <?=$row->nama;?></h3>
				<br><br>
				
			<?php
				if($info['extension'] == 'pdf'){
			?>
				<p align="center"><iframe src="<?=$row->files;?>" width="80%" height="500px" align="center"></iframe></p>
				
			<?php
				}
				else if($info['extension'] == 'jpg' || $info['extension'] == 'jpeg' || $info['extension'] == 'png'){
			?>
				<p align="center"><img src="<?=$row->files;?>" height="500px"></img></p>
				
			<?php
				}
				else if($info['extension'] == 'xlsx'){
					$this->load->library('Excel');
					chmod($row->files, 666);
					$objPHPExcel = PHPExcel_IOFactory::load($row->files);
					$cell_collection = $objPHPExcel->getActiveSheet()->getCellCollection();
					$letters = array_combine(range('A','Z'), range('1', '26'));
					foreach ($cell_collection as $cell) {
						$column = $objPHPExcel->getActiveSheet()->getCell($cell)->getColumn();
						$row = $objPHPExcel->getActiveSheet()->getCell($cell)->getRow();
						$data_value = $objPHPExcel->getActiveSheet()->getCell($cell)->getValue();
						$kolom = $letters[$column];
						
						if ($row == 1) {
							$header[$row][$kolom] = $data_value;
						} else {
							$arr_data[$row][$kolom] = $data_value;
						}
					}
					
					$jumlah_baris = $objPHPExcel->setActiveSheetIndex(0)->getHighestRow();
					$data = $arr_data;
			?>
				<div class="box-body">
					<table width="100%" id="tableku" class="table table-striped">
						<thead>
							<th width="5%">No</th>
							<?php for($i=1; $i <= $kolom; $i++){?>
							<th><?php print($header[1][$i])?></th>
							<?php }?>
						</thead>
						<tbody>
							<?php for($i=2; $i <= $jumlah_baris; $i++){?>
							<tr>
								<td align="center"><?=$i-1?></td>
								<?php for($j=1; $j <= $kolom; $j++){?>
								<td align="center"><?php print($data[$i][$j]);?></td>
							<?php }
								echo "</tr>";
							}?>
						</tbody>
					</table>
				</div>
				
			<?php }
				else if($info['extension'] == 'docx'){
			?>
				<div align="center"><iframe src="https://docs.google.com/gview?url=<?=$row->files;?>&embedded=true" width="80%" height="500px"></iframe></div>
			<?php } endforeach;?>
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