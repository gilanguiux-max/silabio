<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>
<div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Edit Bahan</h3>
          </div>
          <div class="box-body">
<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-2 control-label">Kode</label>
            <?php echo form_input(array('name'=>'id','value'=>$row->id,'id'=>'id','class'=>'form-control','style'=>'display:none'));?>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'kode','value'=>$row->kode,'class'=>'form-control','id'=>'kode'));?>
            <?php echo form_error('kode');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Jenis Bahan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'jenis_bahan','value'=>$row->jenis_bahan,'class'=>'form-control','id'=>'jenis_bahan'));?>
            <?php echo form_error('jenis_bahan');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Nama Bahan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_bahan','value'=>$row->nama_bahan,'class'=>'form-control','id'=>'nama_bahan'));?>
            <?php echo form_error('nama_bahan');?>
            </div>
        </div>
        <div class="form-group">
                <label class="col-sm-2  control-label" for="userfile">Gambar</label>
                <div class="col-sm-8">
                <?php echo form_upload(array('name'=>'ufile', 'id'=>'ufile', 'value'=>$row->gambar));?>
                <!-- <span id='info'></span></label> -->
                </div>
            </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Tahun</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tahun','value'=>$row->tahun,'class'=>'form-control','id'=>'tahun'));?>
            <?php echo form_error('tahun');?>
            </div>
        </div>
        
        <div class="form-group">
            <label class="col-sm-2 control-label"></label>
            <div class="col-sm-8 tutup">
            <input onclick="save()" type="submit" value="Save" id="tombol" class="btn btn-success">
            </div>
        </div>
    </form>
</div>


<script type="text/javascript">
$(document).ready(function() {
		$("#ufile").fileinput({
		'showUpload'            :true,
		  initialPreview: '<img src="<?php echo base_url().$row->gambar; ?>" class="file-preview-image" value="<?php echo $row->gambar;?>">'
		});
		$('#tombol').removeAttr('disabled',false);
		$('.fileinput-remove').on('click',function(){
			hapus();
			})
	});
	
function hapus()
{
	var ida = $('#id').val();
	$.ajax({
        type: "POST",
        url: "<?= site_url('master/master_bahan/show_editGambar/"+ida+"')?>",
        dataType:'json',
        data: {
            id        : $("#id").val(),
        },
        success   : function(data)
        {
          $.growl.notice({ title: 'Sukses', message: data['msg']});      
          load_silent("master/master_bahan/","#content");
		  console.log(data);
        }
      });
}

function save()
{
    $('#tombol').attr('disabled','disabled');
    var path = $("#ufile").val().replace('C:\\fakepath\\', '');
    var ida = $('#id').val();
    if (path == '') {
        $.ajax({
        type: "POST",
        url: "<?= site_url('master/master_bahan/show_editForm/"+ida+"')?>",
        dataType:'json',
        data: {
            id        : ida,
            kode             : $("#kode").val(),
            nama_bahan       : $("#nama_bahan").val(),
            tahun            : $("#tahun").val(),
            jenis_bahan      : $("#jenis_bahan").val(),
          
        },
        success   : function(data)
        {
          $.growl.notice({ title: 'Sukses', message: data['msg']});      
          load_silent("master/master_bahan/","#content");
		  console.log(data);
        }
      });

    } else{
        $.ajaxFileUpload
          ({
            url: "<?= site_url('master/master_bahan/show_editForm_file/"+ida+"')?>",
            secureuri:false,
            fileElementId:'ufile',
            dataType: 'json',
            data: {
                id        : $("#id").val(),
                kode             : $("#kode").val(),
                nama_bahan       : $("#nama_bahan").val(),
                tahun            : $("#tahun").val(),
                jenis_bahan      : $("#jenis_bahan").val(),
                
              },
            success: function (data)
            {
              $.growl.notice({ title: 'Berhasil', message: data['msg'] });
              load_silent("master/master_bahan/","#content");
            },
            error: function (data, e)
            {
              $("#info").html(e);
            }
          })

    };
  
  return false;
}
</script>

