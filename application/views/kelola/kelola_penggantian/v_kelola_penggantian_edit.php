<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>
<?php
    $row = fetch_single_row($edit);
?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Id Peminjaman</label>
            <div class="col-sm-8">
            <?php echo form_hidden('id',$row->id); ?>
            <div >
                <select class="form-control" name="id_peminjaman">
                <?php foreach ($kode_peminjaman->result() as $id_peminjaman): ?>
                    <option value="<?= $id_peminjaman->kode_peminjaman ?>" <?= $id_peminjaman->kode_peminjaman == $row->id_peminjaman ? "selected" : null ?>><?= $id_peminjaman->kode_peminjaman ?></option>
                <?php endforeach; ?>
                </select>
            </div>
            <?php echo form_error('kode');?>
            <span id="check_data"></span>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama','value'=>$row->nama,'class'=>'form-control'));?>
            <?php echo form_error('nama');?>
            </div>
        </div>
      
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Barang</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'nama_barang','value'=>$row->nama_barang,'class'=>'form-control'));?>
            <?php echo form_error('nama_barang');?>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Status Penggantian</label>
            <div class="col-sm-8">
            <select class="form-control" name="status_penggantian">
                <?php foreach ($status_penggantian->result() as $status_penggantian): ?>
                    <option value="<?= $status_penggantian->status_penggantian ?>" <?= $status_penggantian->status_penggantian == $row->status_penggantian ? "selected" : null ?>><?= $status_penggantian->status_penggantian ?></option>
                <?php endforeach; ?>
                </select>
            </div>
            <?php echo form_error('kode');?>
            <span id="check_data"></span>
            </div>
        </div>
       

        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/kelola_penggantian/show_editForm/","#divsubcontent")','Simpan','btn btn-success')." ";
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