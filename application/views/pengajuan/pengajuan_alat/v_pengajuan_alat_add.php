<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Id Periode</label>
            <div class="col-sm-8">
            <div >
                <select class="form-control" name="id_periode">
                <?php foreach ($periode_pengajuan->result() as $periode): ?>
                    <option value="<?= $periode->id  ?>"><?= $periode->id ?></option>
                <?php endforeach; ?>
                </select>
            </div>
            <?php echo form_error('id_periode');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Pengaju</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'pengaju','class'=>'form-control', 'readonly'=>'readonly', 'value'=> from_session('nama')));?>
            
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Alat</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_alat','class'=>'form-control'));?>
            <?php echo form_error('nama_alat');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Jumlah</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'jumlah','class'=>'form-control'));?>
            <?php echo form_error('jumlah');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Harga Satuan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'harga_satuan','class'=>'form-control'));?>
            <?php echo form_error('harga_satuan');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"pengajuan/pengajuan_alat/show_addForm/","#divsubcontent")','Save','btn btn-success')." ";
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