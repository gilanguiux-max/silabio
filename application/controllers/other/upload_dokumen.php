<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class upload_dokumen extends CI_Controller {
	
	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('other/m_upload_dokumen');
	}

	public function index()
	{
		$this->fungsi->check_previleges('upload_dokumen');
		$data['dokumen'] = $this->m_upload_dokumen->getAllData();
		$this->load->view('other/v_upload_dokumen', $data);
    }
	
	public function form()
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Upload Dokumen";
		$subheader = "Upload Dokumen";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		$this->fungsi->run_js('load_silent("other/upload_dokumen/show_addForm/","#divsubcontent")');
	}
	
	public function show_addForm()
	{
		$this->fungsi->check_previleges('upload_dokumen');
		$this->load->library('form_validation');

		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE) {
			$this->load->view('other/v_upload_dokumen_form');
		} else {
			$datapost = get_post_data(array('file'));
			$this->fungsi->run_js('load_silent("other/upload_dokumen","#content")');
			$this->fungsi->message_box("Data dokumen berhasil dihapus...","notice");
		}
	}
	
	public function insertFile()
	{
		$this->fungsi->check_previleges('upload_dokumen');

		$upload_folder = get_upload_folder('./files/dokumen/');

		$config['upload_path']   = $upload_folder;
		$config['allowed_types'] = 'pdf|xlsx|docx|jpg|jpeg';
		$config['max_size']      = '30720';
		$config['encrypt_name']  = false;

		$this->load->library('upload', $config);
		$err = "";
		$msg = "";
		if (!$this->upload->do_upload('ufile')) {
			$err = $this->upload->display_errors('<span class="error_string">', '</span>');
		} else {
			$data = $this->upload->data();
			$datapost = array(
				'nama'       => $this->input->post('nama'),
				'files'     => substr($upload_folder,2).$data['file_name'],
			);
			$this->m_upload_dokumen->insertData($datapost);
			$this->fungsi->catat("Mengupload laporan dengan id ".$id);
			$datapesan['msg'] = "Berhasil mengupload dokumen!";
			echo json_encode($datapesan);
		}
	}
	
	public function delete_data($id)
	{
		$this->fungsi->check_previleges('upload_dokumen');
		if($id == '' || !is_numeric($id)) die;
		$this->m_upload_dokumen->deleteData($id);
		$this->fungsi->run_js('load_silent("other/upload_dokumen","#content")');
		$this->fungsi->message_box("Data dokumen berhasil dihapus...","notice");
	}
	
	public function show_document($id)
	{
		$this->fungsi->check_previleges('upload_dokumen');
		if($id == '' || !is_numeric($id)) die;
		$data['dokumen'] = $this->m_upload_dokumen->getData($id)->result();
		
		foreach($data['dokumen'] as $row){
			$info = pathinfo($row->files);
		}
		
		if ($info['extension'] == 'xlsx'){
			$this->load->library('Excel');
			chmod($row->files, 666);
			$objPHPExcel = PHPExcel_IOFactory::load($row->files);
			$cell_collection = $objPHPExcel->getActiveSheet()->getCellCollection();
			$letters = array_combine(range('A','Z'), range('1', '26'));
			foreach ($cell_collection as $cell) {
				$column = $objPHPExcel->getActiveSheet()->getCell($cell)->getColumn();
				$row = $objPHPExcel->getActiveSheet()->getCell($cell)->getRow();
				$data_value = $objPHPExcel->getActiveSheet()->getCell($cell)->getValue();
				$kolom = $letters[$column];
				
				if ($row == 1) {
					$header[$row][$kolom] = $data_value;
				} else {
					$arr_data[$row][$kolom] = $data_value;
				}
			}
			
			$data['kolom'] = $kolom;
			$data['header'] = $header;
			$data['jumlah_baris'] = $objPHPExcel->setActiveSheetIndex(0)->getHighestRow();
			$data['excel'] = $arr_data;
		}
		
		//print_r($data);
		$this->load->view('other/v_upload_dokumen_show', $data);
	}
}