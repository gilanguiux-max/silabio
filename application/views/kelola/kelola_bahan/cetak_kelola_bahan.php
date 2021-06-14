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
<h3 class="box-title" align="center">Pengelolaan Bahan Laboratorium Silabio</h3>
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
			<th>Keterangan</th>
	</thead>
	
	<tbody>
	<?php 
          $i = 1;
          foreach($kelola_bahan->result() as $row):?>
		<?php 
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
				<td align="center"><?=$row->keterangan?></td>
          </tr>
        <?php endforeach;?>
        
	</tbody>
</table>

<script>
	window.print()
</script>