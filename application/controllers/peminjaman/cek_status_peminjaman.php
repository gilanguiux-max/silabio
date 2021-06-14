<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class cek_status_peminjaman extends CI_Controller {

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
		$this->fungsi->check_previleges('cek_status_peminjaman');
		$data = [
            'peminjaman' => $this->m_buat_peminjaman->getData(),
        ];
		$this->load->view('peminjaman/cek/v_cek_status_peminjaman_list',$data);
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