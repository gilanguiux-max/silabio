<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');?>

    
<h3 class="box-title">Data Detail Periode Pengajuan </h3>
    <div class="row" id="form_pembelian">
      <div class="col-lg-12">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Total Dana Yang Di Ajukan</h3>
    <table class="table table-striped text-left">
    <thead>
        <tr>
            <th scope="col"></th>
            <th scope="col"></th>
        </tr>
    </thead>
    <tbody>
        <tr>
        <th scope="row">Id Pengajuan</th>
        <td>Mark</td>
        </tr>
        <tr>
        <th scope="row">Semester</th>
        <td>Jacob</td>
        </tr>
        <tr>
        <th scope="row">TGL Pengajuan</th>
        <td>Larry</td>
        </tr>
        <tr>
        <th scope="row">Sumber Pendanaan</th>
        <td>Larry</td>
        </tr>
        <tr>
        <th scope="row">TGL Turun</th>
        <td>Larry</td>
        </tr>
        <tr>
        <th scope="row">Pajak</th>
        <td>Larry</td>
        </tr>
        <tr>
        <th scope="row">Status Pengajuan</th>
        <td>Larry</td>
        </tr>
    </tbody>
    </table>
        
          </div>
        </div>
      </div>
    </div>
<script type="text/javascript">
$(document).ready(function() {
    $('#tombol').removeAttr('disabled',false);
    $(".select2").select2();
    $('.tutup').click(function(e) {  
        $('#myModal').modal('hide');
    });
});

function save()
{
    $('#tombol').attr('disabled','disabled');
    var path = $("#logo").val().replace('C:\\fakepath\\', '');
    var ida = $('#id').val();
    if (path == '') {
        $.ajax({
        type: "POST",
        url: "<?= site_url('master/instansi/edit/"+ida+"')?>",
        dataType:'json',
        data: {
            id                : $("#id").val(),
            nama              : $("#nama").val(),
            alamat            : $("#alamat").val(),
            kode              : $("#kode").val(),
            provinsi          : $("#provinsi").val(),
            email             : $("#email").val(),
            website           : $("#website").val(),
            telepon           : $("#telepon").val(),
            kementerian       : $("#kementerian").val(),
            tahun_ajaran      : $("#tahun_ajaran").val(),
            nama_fakultas     : $("#nama_fakultas").val(),
            nama_dekan        : $("#nama_dekan").val(),
            alamat_fakultas   : $("#alamat_fakultas").val(),
            telepon_fakultas  : $("#telepon_fakultas").val(),
            nama_jurusan      : $("#nama_jurusan").val(),
            nama_kajur        : $("#nama_kajur").val(),
            nama_kalab        : $("#nama_kalab").val(),
            telepon_jurusan   : $("#telepon_jurusan").val(),
            alamat_jurusan    : $("#alamat_jurusan").val(),
            deskripsi_jurusan : $("#deskripsi_jurusan").val(),
            peta_jurusan      : $("#peta_jurusan").val(),
            zona_waktu        : $("#zona_waktu").val(),
          
        },
        success   : function(data)
        {
          $.growl.notice({ title: 'Sukses', message: data['msg']});      
          load_silent("master/instansi/","#content");
        }
      });

    } else{
        $.ajaxFileUpload
          ({
            url: "<?= site_url('master/instansi/edit_file/"+ida+"')?>",
            secureuri:false,
            fileElementId:'logo',
            dataType: 'json',
            data: {
                id                : $("#id").val(),
                nama              : $("#nama").val(),
                alamat            : $("#alamat").val(),
                kode              : $("#kode").val(),
                provinsi          : $("#provinsi").val(),
                email             : $("#email").val(),
                website           : $("#website").val(),
                telepon           : $("#telepon").val(),
                kementerian       : $("#kementerian").val(),
                tahun_ajaran      : $("#tahun_ajaran").val(),
                nama_fakultas     : $("#nama_fakultas").val(),
                nama_dekan        : $("#nama_dekan").val(),
                alamat_fakultas   : $("#alamat_fakultas").val(),
                telepon_fakultas  : $("#telepon_fakultas").val(),
                nama_jurusan      : $("#nama_jurusan").val(),
                nama_kajur        : $("#nama_kajur").val(),
                nama_kalab        : $("#nama_kalab").val(),
                telepon_jurusan   : $("#telepon_jurusan").val(),
                alamat_jurusan    : $("#alamat_jurusan").val(),
                deskripsi_jurusan : $("#deskripsi_jurusan").val(),
                peta_jurusan      : $("#peta_jurusan").val(),
                zona_waktu        : $("#zona_waktu").val(),
              },
            success: function (data)
            {
              $.growl.notice({ title: 'Berhasil', message: data['msg'] });
              load_silent("master/instansi/","#content");
            },
            error: function (data, e)
            {
              $("#info").html(e);
            }
          })

    };
  
  return false;
}
</script>