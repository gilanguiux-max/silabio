<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kelola_peminjaman extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('kelola/m_kelola_alat');
		$this->load->model('kelola/m_kelola_bahan');
        $this->load->model('peminjaman/m_buat_peminjaman');
	}

	public function index()
	{
		$this->fungsi->check_previleges('kelola_peminjaman');
		$data = [
            'peminjaman' => $this->m_buat_peminjaman->getData(),
        ];
		$this->load->view('kelola/kelola_peminjaman/kelola_peminjaman_list',$data);
	}


    public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Peminjaman";
		$subheader = "buat peminjaman";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("kelola/kelola_peminjaman/show_addForm/","#divsubcontent")');	
		}
		else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("kelola/kelola_peminjaman/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

    public function show_addForm()
	{
		
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'nama_bahan',
					'label' => 'nama_bahan',
					'rules' => 'required'
                ),
                array(
					'field'	=> 'nama_alat',
					'label' => 'nama_alat',
                    'rules' => 'required'
                )
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data = [
                'bahan' => $this->m_kelola_bahan->getData(),
                'alat' => $this->m_kelola_alat->join(),
                'kode_pinjam' =>$this->m_buat_peminjaman->kode_peminjaman(),
                
            ];
			// $data['status']='';
			$this->load->view('kelola/kelola_peminjaman/kelola_peminjaman_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','kode_peminjaman','nama_bahan','nama_alat','tgl_pengembalian','peminjam','tgl_peminjaman', 'status','status_pengembalian'));
            $this->m_buat_peminjaman->insertData($datapost);
			$this->fungsi->run_js('load_silent("kelola/kelola_peminjaman","#content")');
			$this->fungsi->message_box("Data Peminjaman sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Kelola kelola_peminjaman dengan data sbb:",true);
		}
    }

    public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('kelola_peminjaman');
		$this->load->library('form_validation');
		$config = array(
			
			array(
				'field'	=> 'nama_alat',
				'label' => 'nama_alat',
				'rules' => 'required'
            ),
            array(
				'field'	=> 'nama_bahan',
				'label' => 'nama_bahan',
				'rules' => 'required'
			)
		);
	$this->form_validation->set_rules($config);
	$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data = [
                'edit' => $this->db->get_where('peminjaman',array('id'=>$id)),
                'bahan' => $this->m_kelola_bahan->getData(),
                'alat' => $this->m_kelola_alat->join(),
                
            ];

			$this->load->view('kelola/kelola_peminjaman/kelola_peminjaman_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','kode_peminjaman','nama_bahan','nama_alat','tgl_pengembalian','peminjam','tgl_peminjaman','status','status_pengembalian'));
			$this->m_buat_peminjaman->updateData($datapost);
			$this->fungsi->run_js('load_silent("kelola/kelola_peminjaman","#content")');
			$this->fungsi->message_box("Data Peminjaman sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Kelola kelola_peminjaman dengan data sbb:",true);
		}
	}

    public function delete($id)
    {
        
		if($id == '' || !is_numeric($id)) die;
		$this->m_buat_peminjaman->deleteData($id);
		$this->fungsi->run_js('load_silent("kelola/kelola_peminjaman","#content")');
		$this->fungsi->message_box("Data Peminjaman Berhasil dihapus...","notice");
		$this->fungsi->catat("Menghapus laporan dengan id ".$id);
    
	}
	public function pdf($id){

		$this->load->library('dompdf_gen');

		//$data['pengajuan_alat'] = $this->m_pengajuan_alat->getData('pengajuan_alat')->result();
		$data['peminjaman'] = $this->m_buat_peminjaman->pdf($id)->result();
		
		$this->load->view('borang_peminjaman_pdf', $data);

		$paper_size = 'A4';
		$orientation = 'landscape';
		$html = $this->output->get_output();
		$this->dompdf->set_paper($paper_size, $orientation);

		$this->dompdf->load_html($html);
		$this->dompdf->render();
		$this->dompdf->stream("Borang Peminjaman SILADU.pdf", array('Attachment'=>0));
	}

}