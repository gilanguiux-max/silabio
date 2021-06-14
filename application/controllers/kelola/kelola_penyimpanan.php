<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Kelola_penyimpanan extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('kelola/m_kelola_penyimpanan');
	}

	public function index()
	{
		$this->fungsi->check_previleges('kelola_penyimpanan');
		$data['kelola_penyimpanan'] = $this->m_kelola_penyimpanan->getData();
		$this->load->view('kelola/kelola_penyimpanan/v_kelola_penyimpanan_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Kelola penyimpanan";
		$subheader = "kelola_penyimpanan"; //check kelolanya
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("kelola/kelola_penyimpanan/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("kelola/kelola_penyimpanan/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('kelola_penyimpanan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'nama_penyimpanan', //check namanyaa
					'label' => 'Nama Penyimpanan',
					'rules' => 'required'
				),
				array(
					'field'	=> 'status', //check namanyaa
					'label' => 'status',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$this->load->view('kelola/kelola_penyimpanan/v_kelola_penyimpanan_add');
		}
		else
		{
			$datapost = get_post_data(array('id','nama_penyimpanan','status')); 
			$this->m_kelola_penyimpanan->insertData($datapost);
			$this->fungsi->run_js('load_silent("kelola/kelola_penyimpanan","#content")');
			$this->fungsi->message_box("Data Kelola Penyimpanan sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Kelola kelola_penyimpanan dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('kelola_penyimpanan'); //untuk mengechek batasan akses
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'id',
					'rules' => ''
				),
				array(
					'field'	=> 'nama_penyimpanan',
					'label' => 'Nama penyimpanan',
					'rules' => 'required'
				),
				array(
					'field'	=> 'status',
					'label' => 'Status',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('kelola_penyimpanan',array('id'=>$id));
			$this->load->view('kelola/kelola_penyimpanan/v_kelola_penyimpanan_edit',$data);
			$data['status']='';
		}
		else
		{
			$datapost = get_post_data(array('id','nama_penyimpanan','status'));
			$this->m_kelola_penyimpanan->updateData($datapost);
			$this->fungsi->run_js('load_silent("kelola/kelola_penyimpanan","#content")');
			$this->fungsi->message_box("Data Kelola Penyimpanan sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Kelola kelola_penyimpanandengan data sbb:",true);
		}
	}
	public function delete($id) 
	{
		$this->fungsi->check_previleges('kelola_penyimpanan');
		if($id == '' || !is_numeric($id)) die;
		$this->m_kelola_penyimpanan->deleteData($id);
		$this->fungsi->run_js('load_silent("kelola/kelola_penyimpanan","#content")');
		$this->fungsi->message_box("Data kelola penyimpanan berhasil dihapus...","notice");
		$this->fungsi->catat("Menghapus laporan dengan id ".$id);
	}
	
	public function cetak()
	{
		$this->load->library("excel");
		$object = new PHPExcel();
		$object->setActiveSheetIndex(0);
		
		$table_columns = array("No", "Nama Penyimpanan", "Status");

		$column = 0;

		foreach($table_columns as $field)
		{
			$object->getActiveSheet()->setCellValueByColumnAndRow($column, 1, $field);
			$column++;
		}
		
		$data = $this->m_kelola_penyimpanan->getData()->result();
		$excel_row = 2;
		$i = 1;
		foreach($data as $row)
		{
			$object->getActiveSheet()->setCellValueByColumnAndRow(0, $excel_row, $i);
			$object->getActiveSheet()->setCellValueByColumnAndRow(1, $excel_row, $row->nama_penyimpanan);
			$object->getActiveSheet()->setCellValueByColumnAndRow(2, $excel_row, $row->status == '1' ? 'Tersedia' : 'Penuh');
			$excel_row++;
			$i++;
		}
		
		$object_writer = PHPExcel_IOFactory::createWriter($object, 'Excel2007');
		header('Content-Type: application/vnd.ms-excel');
		header('Content-Disposition: attachment;filename="Kelola Penyimpanan.xlsx"');
		$object_writer->save('php://output');
	}
}
