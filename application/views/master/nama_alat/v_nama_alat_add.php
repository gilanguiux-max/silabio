<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Tambah Alat</h3>
          </div>
          <div class="box-body">
<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Kode</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'kode','class'=>'form-control','id'=>'kode'));?>
            <?php echo form_error('kode');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Alat</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_alat','class'=>'form-control','id'=>'nama_alat'));?>
            <?php echo form_error('nama_alat');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
                <label class="col-sm-4 control-label" for="userfile">Gambar</label>
                <div class="col-sm-8">
                <?php echo form_upload(array('name'=>'ufile','id'=>'ufile'));?>
                <!-- <span id='info'></span></label> -->
                </div>
            </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Keterangan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'keterangan','class'=>'form-control','id'=>'keterangan'));?>
            <?php echo form_error('keterangan');?>
            <span id="check_data"></span>
            </div>
        </div>
        
        <div class="form-group">
                <label class="col-sm-4 control-label" >Save</label>
                <div class="col-sm-8 tutup">
                <input onclick="save()" type="submit" id="tombol" value="Save" class="btn btn-success">
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
    $('#tombol').attr('disabled','disabled');
    var path = $("#ufile").val().replace('C:\\fakepath\\', '');
    var ida = $('#id').val();
    if (path == '') {
        $.ajax({
        type: "POST",
        url: "<?= site_url('master/nama_alat/insert')?>",
        dataType:'json',
        data: {
            kode       : $("#kode").val(),
            nama_alat       : $("#nama_alat").val(),
            keterangan : $("#keterangan").val(),
          
        },
        success   : function(data)
        {
          $.growl.notice({ title: 'Sukses', message: data['msg']});      
          load_silent("master/nama_alat/","#content");
        }
      });

    } else{
        $.ajaxFileUpload
          ({
            url: "<?= site_url('master/nama_alat/insertFile')?>",
            secureuri:false,
            fileElementId:'ufile',
            dataType: 'json',
            data: {
                nama_alat       : $("#nama_alat").val(),
                kode       : $("#kode").val(),
                keterangan : $("#keterangan").val(),
              },
            success: function (data)
            {
              $.growl.notice({ title: 'Berhasil', message: data['msg'] });
              load_silent("master/nama_alat/","#content");
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
    url:site+'master/nama_alat/show_addForm',
    secureuri:false,
    fileElementId:'ufile',
    dataType: 'json',
    data: {
        kode             : $("#kode").val(),
        item             : $("#item").val(),
        keterangan       : $("#keterangan").val(),
      },
    success: function (data)
    {
      $.growl.notice({ title: 'Berhasil', message: data['msg'] });
      load_silent("master/item/","#content");
    },
    error: function (data, e)
    {
      $("#info").html(e);
    }
  })
  return false;
}

</script>
