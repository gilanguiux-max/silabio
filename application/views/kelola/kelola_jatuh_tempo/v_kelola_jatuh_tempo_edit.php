<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<?php $row = fetch_single_row($edit); ?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>

        <?php echo form_hidden('id',$row->id); ?>

        <div class="form-group">
            <label class="col-sm-4 control-label">Kode Peminjaman</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'kode_peminjaman','class'=>'form-control', 'readonly'=>'readonly','value'=>$row->kode_peminjaman));?>
            <?php echo form_error('kode_peminjaman');?>
            <span id="check_data"></span>
            </div>
        </div>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Bahan</label>
            <div class="col-sm-8">
            <div>
                <select class="form-control" name="nama_bahan">
                <?php foreach ($bahan->result() as $bahan): ?>
                    <option value="<?= $bahan->id_nama_bahan ?>" <?= $bahan->nama_bahan == $row->nama_bahan ? "selected" : null ?>><?= $bahan->nama_bahan ?></option>
                <?php endforeach; ?>
                </select>
            </div>
            <?php echo form_error('nama_bahan');?>
            <span id="check_data"></span>
            </div>
        </div>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Nama Alat</label>
            <div class="col-sm-8">
            <div>
                <select class="form-control" name="nama_alat">
                <?php foreach ($alat->result() as $alat): ?>
                    <option value="<?= $alat->id_nama_alat ?>" <?= $alat->nama_alat == $row->nama_alat ? "selected" : null ?>><?= $alat->nama_alat ?></option>
                <?php endforeach; ?>
                </select>
            </div>
            <?php echo form_error('nama_alat');?>
            <span id="check_data"></span>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal Pengembalian</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tgl_pengembalian','class'=>'form-control', 'readonly'=>'readonly', 'value'=>$row->tgl_pengembalian));?>
            <?php echo form_error('stock');?>
            </div>
        </div>            
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Peminjam</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'peminjam','class'=>'form-control', 'readonly'=>'readonly', 'value'=> $row->peminjam));?>
            <?php echo form_error('peminjam');?>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal Pinjam</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tgl_pinjam','class'=>'form-control', 'readonly'=>'readonly', 'value'=> $row->tgl_pinjam));?>
            <?php echo form_error('tgl_pinjam');?>
            </div>
        </div>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Status Peminjaman</label>
            <div class="col-sm-8">
        <select name="status" id="" class="form-control">
            <?php if($row->status == 'Belum Disetujui'){
                echo '<option value="Belum Disetujui" >Belum Disetujui</option>';
            }else{
                echo '<option value="Sudah Disetujui" >Sudah Disetujui</option>';
            } ?>
            </select>
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Status Pengembalian</label>
            <div class="col-sm-8">
            <select name="status_pengembalian" id="" class="form-control">
                <option value="Belum Dikembalikan" <?= $row->status == 'Belum Dikembalikan' ? 'selected' : null ?>>Belum Dikembalikan</option>
                <option value="Sudah Dikembalikan" >Sudah Dikembalikan</option>
            </select>
            <?php echo form_error('tgl_pinjam');?>
            </div>
        </div>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/kelola_jatuh_tempo/show_editForm/","#divsubcontent")','Save','btn btn-success')." ";
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