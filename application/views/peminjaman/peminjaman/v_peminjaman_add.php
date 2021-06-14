<div class="box box-default">
      <div class="box-header with-border">
        <h3 class="box-title">Form peminjaman</h3>

        <div class="box-tools pull-right">
          <button type="button" id="tutup" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
        </div>
      </div>
      <!-- /.box-header -->
      <div class="box-body">
        <form class="form-vertical form_faktur" role="form">
          <div class="row">
            <div class="col-md-4">
              <div class="form-group">
                <label>No Peminjaman</label>
                <input type="text" value="<?=$nomor?>" class="form-control" id="nomor" required readonly>
              </div>             
            </div>
            <?php if($this->session->userdata('level')<21){ ?>
            <div class="col-md-3">
              <div class="form-group">
                <label>Status Peminjam</label>
                <select id="status_peminjam" name="status_peminjam" class="form-control" style="width:100%" required>
                    <option value="">-- Pilih Status --</option>
                    <option value="mhs">Mahasiswa UNNES</option>
                    <option value="mhsbio">Mahasiswa Bio</option>
                    <option value="dos">Dosen</option>
                    <option value="dosbio">Dosen Bio</option>
                    <option value="kar">Karyawan</option>
                    <option value="umm">Umum</option>
                  </select>
              </div>             
            </div>
            <div class="col-md-5">
              <div class="form-group">
                <label>Instansi Peminjam</label>
                <input type="text" class="form-control" id="instansi" required>
              </div>             
            </div>
          </div>
          <div class="row">
            <div class="col-md-3">
              <div class="form-group">
                <label>Jenis Identitas</label>
                <select id="jen_id" name="jen_id" class="form-control" style="width:100%" required>
                    <option value="">-- Pilih Jenis ID --</option>
                    <option value="ktp">KTP</option>
                    <option value="nip">NIP</option>
                    <option value="nim">NIM</option>
                  </select>
              </div>             
            </div>
            <div class="col-md-3">
              <div class="form-group">
                <label>Id Peminjam</label>
                <input type="text" class="form-control" id="id_peminjam" required>
              </div>             
            </div>
            <div class="col-md-3">
              <div class="form-group">
                <label>Nama Peminjam</label>
                <input type="text" class="form-control" id="peminjam" required>
              </div>             
            </div>
            <div class="col-md-3">
              <div class="form-group">
                <label>Kontak Peminjam</label>
                <input type="text" class="form-control" id="kontak" required>
              </div>             
            </div>
          </div>
            <?php } ?>
          <div class="row">
            <div class="col-md-4">
              <div class="form-group">
                <label>Tanggal Peminjaman</label>
                <input type="text" data-date-format="yyyy-mm-dd" value="<?=date('Y-m-d')?>" class="form-control datepicker" id="tgl" placeholder="Tanggal Peminjaman" required>
              </div>             
            </div>
            <div class="col-md-2">
              <div class="form-group clockpicker">
              <label>Jam Peminjaman</label>
              <div class="input-group">
                  <input type="text" id="jam_pinjam" class="form-control" value="<?=date('H:i')?>" aria-describedby="start-date">
                      <span class="input-group-addon" id="start-date"><span class="glyphicon glyphicon-time"></span></span>
              </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="form-group">
                <label>Tanggal Pengembalian</label>
                <?php $date=date_create(date('Y-m-d'));
                      date_add($date,date_interval_create_from_date_string("7 days")); ?>
                <input type="text" data-date-format="yyyy-mm-dd" value="<?=date_format($date,"Y-m-d")?>" class="form-control datepicker" id="tgl_kembali" placeholder="Tanggal Pengembalian" required>
              </div>             
            </div>
            <div class="col-md-2">
              <div class="form-group clockpicker">
              <label>Jam Pengembalian</label>
              <div class="input-group">
                  <input type="text" id="jam_kembali" class="form-control" value="<?=date('H:i')?>" aria-describedby="start-date">
                      <span class="input-group-addon" id="start-date"><span class="glyphicon glyphicon-time"></span></span>
              </div>
              </div>
            </div>
          </div>

        </div>
        <!-- /.box-body -->
        <div class="box-footer">
          <button type="submit" onclick="save()" id="proses" class="btn btn-success">Process</button>
        </div>
      </form>
    </div>

    <div class="row" id="form_pembelian">
      <div class="col-lg-6">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Input Bahan</h3>
          </div>
          <div class="icikiwir">
            <form class="form-vertical form" role="form" id="formid">
              <div class="box-body">
                <div class="form-group">
                  <label>Bahan</label>
                  <select id="bahan" name="bahan" class="form-control" style="width:100%" required>
                    <option value="">-- Pilih Bahan/Kondisi/Tahun --</option>
                    <?php foreach ($bahan as $val):?>
                      <option value="<?=$val->id?>"><?=$val->nama_bahan?></option>
                    <?php endforeach;?>
                  </select>
                  <span id='gbritem'></span>
                </div>
                
                <div class="form-group">
                  <label class="control-label" for="merk">Quantity:</label>
                  <input type="hidden" class="form-control" id="id_peminjaman" name="id_peminjaman" readonly>
                  <input type="text" style="text-align: right;" class="form-control" id="qty_bahan" name="qty_bahan" placeholder="Quantity" autocomplete="off">
                </div>                
                <div class="form-group">
                  <a onclick="bahan()"  class="btn btn-info">Add peminjaman</a>
                </div>
              </div>
            </form>
          </div>
          <div class="box-footer">
            <table width="100%" id="tableku" class="table table-bordered table-striped" style="font-size: smaller;">
                <thead>
                  <tr>
                    <th width="5%">Act</th>
                    <th width="35%">Bahan</th>
                    <th width="15%">Kondisi</th>
                    <th width="5%">Tahun</th>
                    <th width="5%">Quantity</th>
                  </tr>
                </thead>
                <tbody id="dataTbl">
                </tbody>
              </table>
          </div>
        </div>
        
      </div>

      <div class="col-lg-6">
        <div class="box box-primary">
          <div class="box-header with-border">
            <h3 class="box-title">Input Alat</h3>
          </div>
          <div class="icikiwir">
            <form class="form-vertical form" role="form" id="formid">
              <div class="box-body">
                <div class="form-group">
                  <label>Alat</label>
                  <select id="alat" name="alat" class="form-control" style="width:100%" required>
                    <option value="">-- Pilih Alat/Kondisi/Tahun --</option>
                    <?php foreach ($alat as $val):?>
                      <option value="<?=$val->id?>"><?=$val->nama_alat?></option>
                    <?php endforeach;?>
                  </select>
                  <span id='gbritem'></span>
                </div>
                
                <div class="form-group">
                  <label class="control-label" for="merk">Quantity:</label>
                  <input type="text" style="text-align: right;" class="form-control" id="qty_alat" name="qty_alat" placeholder="Quantity" autocomplete="off">
                </div>                
                <div class="form-group">
                  <a onclick="alat()"  class="btn btn-info">Add peminjaman</a>
                </div>
              </div>
            </form>
          </div>
          <div class="box-footer">
            <table width="100%" id="tableku" class="table table-bordered table-striped" style="font-size: smaller;">
                <thead>
                  <tr>
                    <th width="5%">Act</th>
                    <th width="35%">Alat</th>
                    <th width="15%">Kondisi</th>
                    <th width="5%">Tahun</th>
                    <th width="5%">Quantity</th>
                  </tr>
                </thead>
                <tbody id="dataTblAlat">
                </tbody>
              </table>
                  <a onclick="finish()"  class="btn btn-success pull-right"> Finish</a>
          </div>
        </div>
        
      </div>
  </div>

<script type="text/javascript">
function finish() {
  if(confirm('Anda yakin ingin menyelesaikan?'))
  {
    $.growl.notice({ title: 'Berhasil', message: "Peminjaman selesai!"});
    load_silent("peminjaman/peminjaman/","#content");
  }
}

$(document).ready(function() {
  $('.datepicker').datepicker({
    autoclose: true
  });
  $('.clockpicker').clockpicker({
    donetext: 'Selesai',
  });
  $("select").select2();
  
  // $('.form_pembelian').hide();
});

function save()
{
  $(this).find("button[type='submit']").prop('disabled',true);
      $.ajax({
        type: "POST",
        url:site+'peminjaman/peminjaman/savepeminjaman',
        dataType:'json',
        data: {
            nomor          : $("#nomor").val(),
            peminjam       : <?php echo $stat=="mandiri"?$this->session->userdata('nama'):'$("#peminjam").val()'?>,
            status_peminjam: <?php echo $stat=="mandiri"?$this->session->userdata('status'):'$("#status_peminjam").val()'?>,
            jen_id         : <?php echo $stat=="mandiri"?"KTP":'$("#status_peminjam").val()'?>,$("#jen_id").val(),
            instansi       : <?php echo $stat=="mandiri"?$this->session->userdata('instansi'):'$("#instansi").val()'?>,
            jenis_pinjaman : 1,
            id_peminjam    : <?php echo $stat=="mandiri"?$this->session->userdata('ktp'):'$("#id_peminjam").val()'?>,
            kontak         : <?php echo $stat=="mandiri"?$this->session->userdata('kontak'):'$("#kontak").val()'?>,
            tgl            : $("#tgl").val(),
            jam_pinjam     : $("#jam_pinjam").val(),
            tgl_kembali    : $("#tgl_kembali").val(),
            jam_kembali    : $("#jam_kembali").val(),
          
        },
        success   : function(data)
        {
          $('#id_peminjaman').val(data['id']);
          $.growl.notice({ title: 'Sukses', message: data['msg']});
          $('#tutup').click();
          $('#form_pembelian').show(1000);
        }
      });
          return false;
  
}

var xi = 0;


$('#formid').on('keypress', function(e) {
  var keyCode = e.keyCode || e.which;
  if(e.keyCode==13 || e.keyCode==9){
    e.preventDefault();    
    bahan();
  }
});
function bahan() {
  if ($('#id_peminjaman').val() !='' && $('#bahan').val() !='' && $('#qty_bahan').val() != '') 
  {

                  $.ajax({
                      type: "POST",
                      url: "<?=site_url('peminjaman/peminjaman/savepeminjamanbahan')?>",
                      dataType:'json',
                      data: {
                        'id_peminjaman'      : $('#id_peminjaman').val(),
                        'bahan'               : $("#bahan").val(),
                        'qty_bahan'            : $("#qty_bahan").val(),
                      },
                    })
                    .success(function(datasaved)
                    {
                  //code here
                  xi++;
                  var i = datasaved['id'];
                  var bahans = $('#bahan :selected').text();
                  var res = bahans.split("/");

                  var x = '<tr id="output_data_'+i+'" class="output_data">\
                  <td width="5%" align="center">\
                    <a href="javascript:void(0)" onClick="hapus('+i+')">\
                      <i class="fa fa-trash"></i>\
                    </a>\
                  </td>\
                  <td width="35%">\
                    '+res[0]+'\
                  </td>\
                  <td width="15%">\
                    '+res[1]+'\
                  </td>\
                  <td width="5%">\
                    '+res[2]+'\
                  </td>\
                  <td width="5%">\
                    '+$('#qty_bahan').val()+'\
                  </td>\
                </tr>';
                $('tr.odd').remove();
                $('#dataTbl').append(x);
                $('#bahan').val('').trigger('change');
                $('#qty_bahan').val('');
                $.growl.notice({ title: 'Sukses', message: "Berhasil menyimpan peminjaman"});
                
              })
.fail(function(XHR){
  if (XHR.readyState==0) {
    $.growl.error({ title: 'Peringatan', message: 'Terjadi Kesalahan! KONEKSI TERPUTUS' });
    $('#qty_bahan').val('');
  }else{
    $.growl.error({ title: 'Peringatan', message: 'Terjadi Kesalahan! UNKNOWN ERROR' });
    $('#qty_bahan').val('');
  }
});

  } else{$.growl.error({ title: 'Peringatan', message: 'Lengkapi Form dulu!' });};
}

function alat() {
  if ($('#id_peminjaman').val() !='' && $('#alat').val() !='' && $('#qty_alat').val() != '') 
  {

                  $.ajax({
                      type: "POST",
                      url: "<?=site_url('peminjaman/peminjaman/savepeminjamanalat')?>",
                      dataType:'json',
                      data: {
                        'id_peminjaman'      : $('#id_peminjaman').val(),
                        'alat'            : $("#alat").val(),
                        'qty_alat'            : $("#qty_alat").val(),
                      },
                    })
                    .success(function(datasaved)
                    {
                  //code here
                  xi++;
                  var i = datasaved['id'];
                  var alats = $('#alat :selected').text();
                  var resa = alats.split("/");

                  var x = '<tr id="output_data_alat'+i+'" class="output_data">\
                  <td width="5%" align="center">\
                    <a href="javascript:void(0)" onClick="hapusalat('+i+')">\
                      <i class="fa fa-trash"></i>\
                    </a>\
                  </td>\
                  <td width="35%">\
                    '+resa[0]+'\
                  </td>\
                  <td width="15%">\
                    '+resa[1]+'\
                  </td>\
                  <td width="5%">\
                    '+resa[2]+'\
                  </td>\
                  <td width="5%">\
                    '+$('#qty_alat').val()+'\
                  </td>\
                </tr>';
                $('tr.odd').remove();
                $('#dataTblAlat').append(x);
                $('#alat').val('').trigger('change');
                $('#qty_alat').val('');
                $.growl.notice({ title: 'Sukses', message: "Berhasil menyimpan peminjaman"});
                
              })
.fail(function(XHR){
  if (XHR.readyState==0) {
    $.growl.error({ title: 'Peringatan', message: 'Terjadi Kesalahan! KONEKSI TERPUTUS' });
    $('#qty_alat').val('');
  }else{
    $.growl.error({ title: 'Peringatan', message: 'Terjadi Kesalahan! UNKNOWN ERROR' });
    $('#qty_alat').val('');
  }
});

  } else{$.growl.error({ title: 'Peringatan', message: 'Lengkapi Form dulu!' });};
}

function hapus(i)
{
  if(confirm('Lanjutkan Proses Hapus?'))
  {
    $.ajax({
      type: "POST",
      url: "<?=site_url('peminjaman/peminjaman/deletebahan')?>",
      dataType:'json',
      data: {        
        'id' : i
      }
    })
    .success(function(datasaved)
    {
      $.growl.notice({ title: 'Sukses', message: datasaved.msg});
      $('#output_data_'+i).remove();
    });    
  }
}

function hapusalat(i)
{
  if(confirm('Lanjutkan Proses Hapus?'))
  {
    $.ajax({
      type: "POST",
      url: "<?=site_url('peminjaman/peminjaman/deletealat')?>",
      dataType:'json',
      data: {        
        'id' : i
      }
    })
    .success(function(datasaved)
    {
      $.growl.notice({ title: 'Sukses', message: datasaved.msg});
      $('#output_data_alat'+i).remove();
    });    
  }
}


</script>