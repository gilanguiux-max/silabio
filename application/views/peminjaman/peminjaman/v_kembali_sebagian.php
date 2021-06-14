<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        <div class="form-group">
            <label class="col-sm-4 control-label">Dikembalikan ke lab</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id', $id); ?>
            <?php echo form_hidden('qty_awal', $detail->qty); ?>
            <?php echo form_input(array('name'=>'qty','value'=>$detail->qty,'class'=>'form-control qty'));?>
            <?php echo form_error('qty');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">DIlepas (Jual/Habis)</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'qty_hapus','class'=>'form-control qty_hapus'));?>
            <?php echo form_error('qty_hapus');?>
            </div>
        </div>
        
        <div class="form-group">
            <label class="col-sm-4 control-label"></label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"peminjaman/peminjaman/kembalikansebagianform/'.$barang.'","#divsubcontent")','Save','btn btn-success')." ";
            ?>
            </div>
        </div>
    </form>
</div>

<script type="text/javascript">
$(document).ready(function() {
    $( ".qty_hapus" ).focus();
    $('.tutup').click(function(e) {  
        $('#myModal').modal('hide');
    });
    $(".qty_hapus").keyup(function(){
        var qty=$(".qty").val();
        var hapus=$(".qty_hapus").val();
        var res=qty-hapus;
        if(hapus<1){
            $(".qty").val(<?=$detail->qty?>);
        }else{
            $(".qty").val(res);
        }
        
    });
});
</script>