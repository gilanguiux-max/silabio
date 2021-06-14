<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<?php $row = fetch_single_row($edit); ?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Alat</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'id','value'=>$row->id,'id'=>'id','class'=>'form-control','style'=>'display:none'));?>
            <div >
                <select class="form-control" name="id_nama_alat" id="id_nama_alat">
				<?php foreach ($nama_alat->result() as $alat): ?>
                    <option value="<?= $alat->id ?>" <?= $alat->id == $row->id_nama_alat ? "selected" : null ?>><?= $alat->nama_alat ?></option>
                <?php endforeach; ?>
                </select>
            </div>
            <?php echo form_error('id_nama_alat');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Satuan Alat</label>
            <div class="col-sm-8">
            <div >
                <select class="form-control" name="satuan_alat" id="satuan_alat">
                <?php foreach ($satuan->result() as $satuan): ?>
                    <option value="<?= $satuan->id ?>" <?= $satuan->id == $row->satuan_alat ? "selected" : null ?>><?= $satuan->nama_satuan ?></option>
                <?php endforeach; ?>
                </select>
            </div>
            <?php echo form_error('satuan_alat');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Kategori</label>
            <div class="col-sm-8">
            <div >
                <select class="form-control" name="kategori" id="kategori">
                <?php foreach ($kategori->result() as $kategori): ?>
                    <option value="<?= $kategori->id ?>" <?= $kategori->id == $row->kategori ? "selected" : null ?>><?= $kategori->kategori_alat_bahan ?></option>
                <?php endforeach; ?>
                </select>
            </div>
            <?php echo form_error('kategori');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Stok</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'stok','class'=>'form-control', 'id'=>'stok', 'value'=>$row->stok));?>
            <?php echo form_error('kode');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Stok Minimal</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'stok_minimal','class'=>'form-control', 'id'=>'stok_minimal', 'value'=>$row->stok_minimal));?>
            <?php echo form_error('kode');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Lokasi</label>
            <div class="col-sm-8">
            <div >
                <select class="form-control" name="lokasi" id="lokasi">
                <?php foreach ($lokasi->result() as $lokasi): ?>
                    <option value="<?= $lokasi->id ?>" <?= $lokasi->id == $row->lokasi ? "selected" : null ?>><?= $lokasi->nama_penyimpanan ?></option>
                <?php endforeach; ?>
                </select>
            </div>
            <?php echo form_error('kode');?>
            <span id="check_data"></span>
            </div>
        </div>            
        <div class="form-group">
            <label class="col-sm-4 control-label">Pendanaan</label>
            <div class="col-sm-8">
            <div >
                <select class="form-control" name="pendanaan" id="pendanaan">
                <?php foreach ($dana->result() as $dana): ?>
                    <option value="<?= $dana->id ?>" <?= $dana->id == $row->pendanaan ? "selected" : null ?>><?= $dana->sumber_pendanaan ?></option>
                <?php endforeach; ?>
                </select>
            </div>
            <?php echo form_error('kode');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Harga</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'harga','class'=>'form-control','id'=>'harga','value'=>$row->harga));?>
            <?php echo form_error('kode');?>
            <span id="check_data"></span>
            </div>
        </div>
        
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Kondisi</label>
            <div class="col-sm-8">
            <div >
                <select class="form-control" name="kondisi" id="kondisi">
                <?php foreach ($kondisi->result() as $kondisir): ?>
                    <option value="<?= $kondisir->id ?>" <?= $kondisir->id == $row->kondisi ? "selected" : null ?>><?= $kondisir->kondisi ?></option>
                <?php endforeach; ?>
                </select>
            </div>
            <?php echo form_error('kondisi');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Tahun</label>
            <div class="col-sm-8">
            <div >
                <select class="form-control" name="tahun" id="tahun">
                <option >Pilih</option>
                <?php for ($i=date('Y')-5;$i<date('Y')+5;$i++): ?>
                    <option value="<?=$i?>" <?=($row->tahun==$i)?'selected':''?> ><?= $i ?></option>
                <?php endfor; ?>
                </select>
            </div>
            <?php echo form_error('kode');?>
            <span id="check_data"></span>
            </div>
        </div>
		<div class="form-group">
			<label class="col-sm-4 control-label" for="userfile">Gambar</label>
			<div class="col-sm-8">
			<?php echo form_upload(array('name'=>'ufile','id'=>'ufile','class'=>'form-control', 'value'=>$row->gambar));?>
			<!-- <span id='info'></span></label> -->
			</div>
		</div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Keterangan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'keterangan','class'=>'form-control', 'id'=>'keterangan', 'value'=>$row->keterangan));?>
            <?php echo form_error('keterangan');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            //echo button('send_form(document.faddmenugrup,"kelola/kelola_alat/show_editForm/","#divsubcontent")','Save','btn btn-success')." ";
            ?>
			<input onclick="save()" type="submit" value="Save" id="tombol" class="btn btn-success">
            </div>
        </div>
    </form>
</div>
<script type="text/javascript">
$(document).ready(function() {
    $(".select2").select2();
    $('.tutup').click(function(e) {  
        $('#myModal').modal('hide');
    });
	$("#ufile").fileinput({
    'showUpload'            :true,
      initialPreview: '<img src="<?php echo base_url().$row->gambar; ?>" class="file-preview-image">'
    });
	$('.fileinput-remove').on('click',function(){
		hapus();
	})
});

function hapus()
{
	var ida = $('#id').val();
	$.ajax({
        type: "POST",
        url: "<?= site_url('kelola/kelola_bahan/show_editGambar/"+ida+"')?>",
        dataType:'json',
        data: {
            id        : $("#id").val(),
        },
        success   : function(data)
        {
          $.growl.notice({ title: 'Sukses', message: data['msg']});      
          load_silent("kelola/kelola_alat/","#content");
		  console.log(data);
        }
      });
}

function save()
{
   //$('#tombol').attr('disabled','disabled');
    var path = $("#ufile").val().replace('C:\\fakepath\\', '');
    var ida = $('#id').val();
    if (path == '') {
        $.ajax({
        type: "POST",
        url: "<?= site_url('kelola/kelola_alat/show_editForm/"+ida+"')?>",
        dataType:'json',
        data: {
            id        : $("#id").val(),
            id_nama_alat       : $("#id_nama_alat").val(),
            satuan_alat       : $("#satuan_alat").val(),
            kategori           : $("#kategori").val(),
            stok           : $("#stok").val(),
            stok_minimal           : $("#stok_minimal").val(),
            lokasi           : $("#lokasi").val(),
            pendanaan           : $("#pendanaan").val(),
            harga           : $("#harga").val(),
            kondisi           : $("#kondisi").val(),
            tahun           : $("#tahun").val(),
            keterangan           : $("#keterangan").val(),
          
        },
		success: function(data){
		  $.growl.notice({ title: 'Sukses', message: data['msg']});      
          load_silent("kelola/kelola_alat/","#content");
		},
      });

    } else{
        $.ajaxFileUpload
          ({
            url: "<?= site_url('kelola/kelola_alat/show_editForm_file/"+ida+"')?>",
            secureuri:false,
            fileElementId:'ufile',
            dataType: 'json',
            data: {
                id        : $("#id").val(),
				id_nama_alat       : $("#id_nama_alat").val(),
				satuan_alat       : $("#satuan_alat").val(),
				kategori           : $("#kategori").val(),
				stok           : $("#stok").val(),
				stok_minimal           : $("#stok_minimal").val(),
				lokasi           : $("#lokasi").val(),
				pendanaan           : $("#pendanaan").val(),
				harga           : $("#harga").val(),
				kondisi           : $("#kondisi").val(),
				tahun           : $("#tahun").val(),
				keterangan           : $("#keterangan").val(),
                
              },
            success: function (data)
            {
              $.growl.notice({ title: 'Berhasil', message: data['msg'] });
              load_silent("kelola/kelola_alat/","#content");
			  console.log(data);
            },
            error: function (data)
            {
			  console.log(data);
            }
          })

    };
  
  return false;
}
</script>