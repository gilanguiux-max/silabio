<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Tambah Bahan</h3>
          </div>
          <div class="box-body">
<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        
        <div class="form-group">
            <label class="col-sm-2 control-label">Kode</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'kode','class'=>'form-control','id'=>'kode'));?>
            <?php echo form_error('kode');?>
            <span id="check_data"></span>
            </div>
        </div>
         <div class="form-group">
            <label class="col-sm-2 control-label">Jenis Bahan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'jenis_bahan','class'=>'form-control','id'=>'jenis_bahan'));?>
            <?php echo form_error('jenis_bahan');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Nama Bahan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_bahan','class'=>'form-control','id'=>'nama_bahan'));?>
            <?php echo form_error('nama_bahan');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
                <label class="col-sm-2 control-label" for="userfile">Gambar</label>
                <div class="col-sm-8">
                <?php echo form_upload(array('name'=>'ufile','id'=>'ufile'));?>
                <!-- <span id='info'></span></label> -->
                </div>
            </div>
        <div class="form-group">
            <label class="col-sm-2 control-label">Tahun</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tahun','class'=>'form-control','id'=>'tahun'));?>
            <?php echo form_error('tahun');?>
            <span id="check_data"></span>
            </div>
        </div>
        
        <div class="form-group">
            <label class="col-sm-2 control-label">Save</label>
            <div class="col-sm-8 tutup">
            <input onclick="save()" type="submit" id="tombol" value="Save" class="btn btn-success" disabled>
            </div>
        </div>
    </form>
</div>
</div>
</div>
<script type="text/javascript">
$(document).ready(function() {
    $("#ufile").fileinput({
    'showUpload'            :true
    });
    $('#tombol').removeAttr('disabled',false);
    
});
function save()
{
    //$('#tombol').attr('disabled','disabled');
    var path = $("#ufile").val().replace('C:\\fakepath\\', '');
    var ida = $('#id').val();
    if (path == '') {
        $.ajax({
        type: "POST",
        url: "<?= site_url('master/master_bahan/show_addForm')?>",
        dataType:'json',
        data: {
            kode		: $("#kode").val(),
			nama_bahan	: $("#nama_bahan").val(),
			tahun		: $("#tahun").val(),
			jenis_bahan	: $("#jenis_bahan").val(),
          
        },
        success   : function(data)
        {
          $.growl.notice({ title: 'Sukses', message: data['msg']});      
          load_silent("master/master_bahan/","#content");
        }
      });

    } else{
        $.ajaxFileUpload
          ({
            url: "<?= site_url('master/master_bahan/insertFile')?>",
            secureuri:false,
            fileElementId:'ufile',
            dataType: 'json',
            data: {
                kode		: $("#kode").val(),
				nama_bahan	: $("#nama_bahan").val(),
				tahun		: $("#tahun").val(),
				jenis_bahan	: $("#jenis_bahan").val(),
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

function savex()
{
    $('#tombol').attr('disabled','disabled');
  $.ajaxFileUpload
  ({
    url:site+'master/master_bahan/show_addForm',
    secureuri:false,
    fileElementId:'ufile',
    dataType: 'json',
    data: {
        kode             : $("#kode").val(),
        nama_bahan             : $("#nama_bahan").val(),
        tahun             : $("#tahun").val(),
        jenis_bahan             : $("#jenis_bahan").val(),
        keterangan       : $("#keterangan").val(),
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
  return false;
}

</script>
