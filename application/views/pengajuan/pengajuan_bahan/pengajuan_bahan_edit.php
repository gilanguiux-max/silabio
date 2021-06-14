<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<?php $row = fetch_single_row($edit); ?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Id Periode</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <div >
                <select class="form-control" name="id_periode">
                <?php foreach ($id->result() as $id_periode): ?>
                    <option value="<?= $id_periode->id ?>" <?= $id_periode->id == $row->id_periode ? "selected" : null ?>><?= $id_periode->id?></option>
                <?php endforeach; ?>
                </select>
            </div>
            <?php echo form_error('id_periode');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Pengaju</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'pengaju','class'=>'form-control', 'readonly'=>'readonly', 'value'=> $row->pengaju));?>
            <?php echo form_error('pengaju');?>
            </div>
        </div> 
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Bahan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_bahan','class'=>'form-control', 'value'=>$row->nama_bahan));?>
            <?php echo form_error('kode');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Jenis Bahan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'jenis_bahan','class'=>'form-control', 'value'=>$row->jenis_bahan));?>
            <?php echo form_error('kode');?>
            <span id="check_data"></span>
            </div>
        </div>    
        <div class="form-group">
            <label class="col-sm-4 control-label">Jumlah</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'jumlah','class'=>'form-control', 'value'=>$row->jumlah));?>
            <?php echo form_error('kode');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Harga Satuan</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'harga_satuan','class'=>'form-control', 'value'=>$row->harga_satuan));?>
            <?php echo form_error('kode');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"pengajuan/pengajuan_bahan/show_editForm/","#divsubcontent")','Save','btn btn-success')." ";
            ?>
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
});
</script>