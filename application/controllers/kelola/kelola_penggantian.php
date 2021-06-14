<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kelola_penggantian extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('kelola/m_kelola_penggantian');
		$this->load->model('m_status_penggantian');
		$this->load->model('master/m_nama_alat');
		$this->load->model('peminjaman/m_buat_peminjaman');

	}

	public function index()
	{
		$this->fungsi->check_previleges('kelola_penggantian');
		$data['kelola_penggantian'] = $this->m_kelola_penggantian->getData();
		$this->load->view('kelola/kelola_penggantian/v_kelola_penggantian_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Kelola Penggantian";
		$subheader = "kelola_penggantian"; //check kelolanya
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("kelola/kelola_penggantian/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("kelola/kelola_penggantian/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('kelola_penggantian');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id_peminjaman', //check namanyaa
					'label' => 'id_peminjaman',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['kode_peminjaman'] = $this ->m_buat_peminjaman->getData();
			$data['status_penggantian']=$this->m_status_penggantian->getData();
			//$data['status']='';
			$this->load->view('kelola/kelola_penggantian/v_kelola_penggantian_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','id_peminjaman','nama','nama_barang','status_penggantian','status' )); 
			$this->m_kelola_penggantian->insertData($datapost);
			$this->fungsi->run_js('load_silent("kelola/kelola_penggantian","#content")');
			$this->fungsi->message_box("Data Kelola Penggantian sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Kelola kelola_penggantian dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('kelola_penggantian'); //untuk mengechek batasan akses
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'id',
					'rules' => ''
				),
				array(
					'field'	=> 'id_peminjaman',
					'label' => 'id_peminjaman',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('kelola_penggantian',array('id'=>$id));
			$data['kode_peminjaman'] = $this ->m_buat_peminjaman->getData();
			$data['status_penggantian']=$this->m_status_penggantian->getData();
			//$data['status']='';
			$this->load->view('kelola/kelola_penggantian/v_kelola_penggantian_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','id_peminjaman','nama','nama_barang','status_penggantian','status'));
			$this->m_kelola_penggantian->updateData($datapost);
			$this->fungsi->run_js('load_silent("kelola/kelola_penggantian","#content")');
			$this->fungsi->message_box("Data Kelola Penggantian sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Kelola kelola_penggantian dengan data sbb:",true);
		}
	}
	public function delete($id) 
	{
		$this->fungsi->check_previleges('kelola_penggantian');
		if($id == '' || !is_numeric($id)) die;
		$this->m_kelola_penggantian->deleteData($id);
		$this->fungsi->run_js('load_silent("kelola/kelola_penggantian","#content")');
		$this->fungsi->message_box("Data Kelola penggantian berhasil dihapus...","notice");
		$this->fungsi->catat("Menghapus laporan dengan id ".$id);
	}
}
