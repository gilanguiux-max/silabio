<html>
<head>
<style type="text/css" media="print">
	table {border: solid 1px #000; border-collapse: collapse; width: 100%}
	tr { border: solid 1px #000}
	td { padding: 7px 5px}
	h3 { margin-bottom: -17px }
	h2 { margin-bottom: 0px }
</style>
<style type="text/css" media="screen">
	table {border: solid 1px #000; border-collapse: collapse; width: 60%}
	tr { border: solid 1px #000}
	td { padding: 7px 5px}
	h3 { margin-bottom: -17px }
	h2 { margin-bottom: 0px }
</style>
</head>

<body style="height:700px;width:800px">
<h3 class="box-title" align="center">Kelola Penyimpanan</h3>
<br>
<br>
<table>
	<!--<tr>
		<td width = "5%">&nbsp;</td>
		<td width = "10%"><img width = "45px" height = "45px" src="<?php echo base_URL()?>/upload/logo.png"></td>
		<td width ="80%"  align="left" ><b style="font-size: 24px;">BPS Kabupaten Semarang</b></td>
		<td width = "5%">&nbsp;</td>
	</tr>
	
	<tr>
		<td width = "80%" align = "center" colspan="4"><b style="font-size: 18px; font-weight:bold;">Rekap Data Mitra Berdasarkan Kecamatan</b></td>
	</tr>
	<!--if (!empty($data)) {
		$no = 0;
		foreach ($data as $d) {
		?>-->
		<table border="1" class="table table-bordered table-hover">
	<thead>
			<th>No</th>
			<th>Nama Penyimpanan</th>
			<th>Status</th>
	</thead>
	
	<tbody>
	<?php 
          $i = 1;
          foreach($kelola_penyimpanan->result() as $row): ?>
          <tr>
            <td align="center"><?=$i++?></td>
            <td align="center"><?=$row->nama_penyimpanan?></td>
            <td align="center"> <span class="badge <?= $row->status == '1' ? 'bg-green' : 'bg-red'?>"><?= $row->status == '1' ? 'Tersedia' : 'Penuh'?></span></td>
          </tr>
        <?php endforeach;?>
        
	</tbody>
</table>

<script>
	window.print()
</script>