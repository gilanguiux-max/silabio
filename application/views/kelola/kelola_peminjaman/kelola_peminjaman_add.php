<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

<div class="box-body big">
    <?php echo form_open('',array('name'=>'faddmenugrup','class'=>'form-horizontal','role'=>'form'));?>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Kode Peminjaman</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'kode_peminjaman','class'=>'form-control','readonly'=>'readonly', 'value'=>$kode_pinjam));?>
            
            </div>
        </div>
    
        <div class="form-group">
            <label class="col-sm-4 control-label">Bahan</label>
            <div class="col-sm-8">
            
                <select class="form-control" name="nama_bahan">
                <option value="Tidak Pilih Bahan">--</option>
                <?php foreach ($bahan->result() as $bahan): ?>
                    <option value="<?= $bahan->id_nama_bahan ?>"><?= $bahan->nama_bahan ?></option>
                <?php endforeach; ?>
                </select>
            
            <?php echo form_error('nama_alat');?>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Alat</label>
            <div class="col-sm-8">
            
                <select class="form-control" name="nama_alat">
                <option value="Tidak Pilih Alat">--</option>
                <?php foreach ($alat->result() as $alat): ?>
                    <option value="<?= $alat->id_nama_alat ?>"><?= $alat->nama_alat ?></option>
                <?php endforeach; ?>
                </select>
            
            <?php echo form_error('satuan_alat');?>
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal Pengembalian</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tgl_pengembalian','class'=>'form-control', 'type'=>'datetime-local'));?>
            
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Peminjam</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'peminjam','class'=>'form-control', 'readonly'=>'readonly', 'value'=> from_session('nama')));?>
            
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Tanggal Pinjam</label>
            <div class="col-sm-8">
            <?php echo form_input(array('name'=>'tgl_pinjam','class'=>'form-control', 'readonly'=>'readonly', 'value'=> now()));?>
            
            </div>
        </div>

        <div class="form-group">
            <label class="col-sm-4 control-label">Status Peminjaman</label>
            <div class="col-sm-8">
            <select name="status" id="" class="form-control">
                <option value="Belum Disetujui">Belum Disetujui</option>
                <option value="Sudah Disetujui">Seudah Disetujui</option>
            </select>
            
            </div>
        </div>
        <div class="form-group">
            <label class="col-sm-4 control-label">Status Pengembalian</label>
            <div class="col-sm-8">
            <select name="status_pengembalian" id="" class="form-control">
                <option value="Belum Disetujui">Belum Dikembalikan</option>
                <option value="Sudah Disetujui">Seudah Dikembalikan</option>
            </select>
            
            </div>
        </div>
        
        <div class="form-group">
            <label class="col-sm-4 control-label">Simpan</label>
            <div class="col-sm-8 tutup">
            <?php
            echo button('send_form(document.faddmenugrup,"kelola/kelola_peminjaman/show_addForm/","#divsubcontent")','Save','btn btn-success')." ";
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