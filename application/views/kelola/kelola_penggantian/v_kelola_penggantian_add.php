<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        
    <div class="form-group">
            <label class="col-sm-4 control-label">Id Peminjaman</label>
            <div class="col-sm-8">
            <select class="form-control" name="id_peminjaman">
                <?php foreach ($kode_peminjaman->result() as $id_peminjaman): ?>
                    <option value="<?= $id_peminjaman->kode_peminjaman ?>"><?= $id_peminjaman->kode_peminjaman ?></option>
                <?php endforeach; ?>
                </select>
            
            <?php echo form_error('id_peminjaman');?>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama','class'=>'form-control'));?>
            <?php echo form_error('nama');?>
            <span id="check_data"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Barang</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_barang','class'=>'form-control'));?>
            <?php echo form_error('nama_barang');?>
            <span id="check_data"></span>
            </div>
        </div>
       
        <div class="form-group">
            <label class="col-sm-4 control-label">Status Penggantian</label>
            <div class="col-sm-8">
            <select class="form-control" name="status_penggantian">
                <?php foreach ($status_penggantian->result() as $status_penggantian): ?>
                    <option value="<?= $status_penggantian->status_penggantian ?>" ><?= $status_penggantian->status_penggantian ?></option>
                <?php endforeach; ?>
                </select>
            </div>
            <?php echo form_error('status_penggantian');?>
            </div>
            </div>
        </div>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/kelola_penggantian/show_addForm/","#divsubcontent")','Save','btn btn-success')." ";
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