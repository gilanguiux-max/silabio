<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class upload_foto extends CI_Controller {
	
	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_upload_dokumen');
	}

	public function index()
	{
		echo "cek";
		/*
		$this->fungsi->check_previleges('upload_dokumen');
		$data['upload_dokumen'] = $this->m_kategori_alat_dan_bahan->getData();
		$this->load->view('master/kategori_alat_dan_bahan/v_kategori_alat_dan_bahan_list',$data);
		*/
    }
}