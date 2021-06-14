<?php if (!defined('BASEPATH')) exit('No direct script access allowed'); ?>

<div class="box-body big">
    <?php echo form_open('', array('name' => 'faddmenugrup', 'class' => 'form-horizontal', 'role' => 'form')); ?>
    <div class="form-group">
        <label class="col-sm-4 control-label" for="userfile">File (.xlsx/.xls)</label>
        <div class="col-sm-8">
            <?php echo form_upload(array('name' => 'ufile', 'id' => 'ufile')); ?>
            <!-- <span id='info'></span></label> -->
        </div>
    </div>
    <div class="form-group">
        <label class="col-sm-4 control-label">Simpan</label>
        <div class="col-sm-8 tutup">
            <input onclick="save()" type="submit" id="tombol" value="Save" class="btn btn-success">
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

    function save() {
        $('#tombol').attr('disabled', 'disabled');
        var path = $("#ufile").val().replace('C:\\fakepath\\', '');
        $.ajaxFileUpload({
            url: "<?= site_url('pengajuan/pengajuan_alat/insertFile') ?>",
            secureuri: false,
            fileElementId: 'ufile',
            dataType: 'json',
            data: {},
            success: function(data) {
                $.growl.notice({
                    title: 'Berhasil',
                    message: data['msg']
                });
                load_silent("pengajuan/pengajuan_alat/", "#content");
            },
            error: function(data, e) {
                $("#info").html(e);
            }
        })

        return false;
    }
</script>