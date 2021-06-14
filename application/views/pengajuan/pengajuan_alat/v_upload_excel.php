<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>        
        <div class="form-group">
            <label class="col-sm-4 control-label">Upload File</label>
            <div class="col-sm-8">
                <?php echo form_upload(array('name'=>'ufile','id'=>'ufile'));?>
            </div>
		</div>
        <div class="form-group">
            <label class="col-sm-4 control-label"></label>
            <div class="col-sm-8 tutup">
            <?php
				//echo button('send_form(document.faddmenugrup,"pengajuan/pengajuan_alat/upload_excel/upload","#divsubcontent")','Save','btn btn-success')." ";
				echo "<a class='btn btn-primary' href='http://localhost/silabio/pengajuan/pengajuan_alat/upload_excel/upload'>Save</a>";
            ?>
            </div>
        </div>
    </form>
</div>

<script type="text/javascript">
$(document).ready(function() {
    $('.tutup').click(function(e) {  
        $('#myModal').modal('hide');
    });
});
</script>