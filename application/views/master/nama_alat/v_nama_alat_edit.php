<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>

<div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
            <div class="box-header with-border">
                <h3 class="box-title">From Edit Item</h3>

                <div class="box-tools pull-right">
                  <?php echo button('load_silent("master/item/show_addForm/","#content")','Reload Page','btn btn-danger','data-toggle="tooltip" title="Add New item"');?> 
                </div>
            </div>
<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-2 control-label">Kode</label>
            <div class="col-sm-8">
            <?php //echo form_hidden('id',$row->id); ?>
			<?php echo form_input(array('name'=>'id','value'=>$row->id,'id'=>'id','class'=>'form-control','style'=>'display:none'));?>
            <?php echo form_input(array('name'=>'kode','value'=>$row->kode,'class'=>'form-control','id'=>'kode'));?>
            <?php echo form_error('kode');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Nama Alat</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_alat','value'=>$row->nama_alat,'class'=>'form-control','id'=>'nama_alat'));?>
            <?php echo form_error('nama_alat');?>
            </div>
        </div>
        <div class="form-group">
                <label class="col-sm-2 control-label" for="userfile">Gambar</label>
                <div class="col-sm-8">
                <?php echo form_upload(array('name'=>'ufile','id'=>'ufile','class'=>'form-control', 'value'=>$row->gambar));?>
                <!-- <span id='info'></span></label> -->
                </div>
            </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Keterangan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'keterangan','value'=>$row->keterangan,'class'=>'form-control','id'=>'keterangan'));?>
            <?php echo form_error('keterangan');?>
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
      initialPreview: '<img src="<?php echo base_url().$row->gambar; ?>" class="file-preview-image">'
    });
    $('#tombol').removeAttr('disabled',false);
    $(".select2").select2();
    $('.tutup').click(function(e) {  
        $('#myModal').modal('hide');
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
        url: "<?= site_url('master/nama_alat/show_editGambar/"+ida+"')?>",
        dataType:'json',
        data: {
            id        : $("#id").val(),
        },
        success   : function(data)
        {
          $.growl.notice({ title: 'Sukses', message: data['msg']});      
          load_silent("master/nama_alat/","#content");
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
        url: "<?= site_url('master/nama_alat/show_editForm/"+ida+"')?>",
        dataType:'json',
        data: {
            id        : $("#id").val(),
            kode          : $("#kode").val(),
            nama_alat       : $("#nama_alat").val(),
            keterangan       : $("#keterangan").val(),
            id_status           : $("#status").val(),
          
        },
        success   : function(data)
        {
          $.growl.notice({ title: 'Sukses', message: data['msg']});      
          load_silent("master/nama_alat/","#content");
		  console.log(data);
        }
      });

    } else{
        $.ajaxFileUpload
          ({
            url: "<?= site_url('master/nama_alat/show_editForm_file/"+ida+"')?>",
            secureuri:false,
            fileElementId:'ufile',
            dataType: 'json',
            data: {
                id       : $("#id").val(),
                nama_alat       : $("#nama_alat").val(),
                kode          : $("#kode").val(),
                keterangan          : $("#keterangan").val(),
                
              },
            success: function (data)
            {
              $.growl.notice({ title: 'Berhasil', message: data['msg'] });
              load_silent("master/nama_alat/","#content");
			  console.log(data);
            },
            error: function (data, e)
            {
              $("#info").html(e);
			  console.log(data);
            }
          })

    };
  
  return false;
}
</script>
</script>