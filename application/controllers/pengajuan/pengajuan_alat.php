<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pengajuan_alat extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('pengajuan/m_pengajuan_alat');
		$this->load->model('pengajuan/m_periode_pengajuan');
	}

	public function index()
	{
		$this->fungsi->check_previleges('pengajuan_alat');
		$data['pengajuan_alat'] = $this->m_pengajuan_alat->join();
		$this->load->view('pengajuan/pengajuan_alat/v_pengajuan_alat_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Pengajuan Alat";
		$subheader = "Pengajuan Alat";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("pengajuan/pengajuan_alat/show_addForm/","#divsubcontent")');	
		}else if ($param == 'import') {
			$this->fungsi->run_js('load_silent("pengajuan/pengajuan_alat/show_importForm/","#divsubcontent")');
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("pengajuan/pengajuan_alat/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('pengajuan_alat');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id_periode',
					'label' => 'id_periode',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$data['periode_pengajuan'] = $this->m_periode_pengajuan->getData();
			$this->load->view('pengajuan/pengajuan_alat/v_pengajuan_alat_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id_pengajuan','id_periode','pengaju','nama_alat','jumlah','harga_satuan','status'));
			$this->m_pengajuan_alat->insertData($datapost);
			$this->fungsi->run_js('load_silent("pengajuan/pengajuan_alat","#content")');
			$this->fungsi->message_box("Data pengajuan sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah pengajuan dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('pengajuan_alat');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id_pengajuan',
					'label' => 'id_pengajuan',
					'rules' => ''
				),
				array(
					'field'	=> 'id_periode',
					'label' => 'id_periode',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('pengajuan_alat',array('id_pengajuan'=>$id));
			$data['status']='';
			$data['id'] = $this->m_periode_pengajuan->getData();
			$this->load->view('pengajuan/pengajuan_alat/v_pengajuan_alat_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id_pengajuan','id_periode','pengaju','nama_alat','jumlah','harga_satuan','status'));
			$this->m_pengajuan_alat->updateData($datapost);
			$this->fungsi->run_js('load_silent("pengajuan/pengajuan_alat","#content")');
			$this->fungsi->message_box("Data Pengajuan sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit pengajuan_alat dengan data sbb:",true);
		}
    }
    public function delete($id) 
	{
		$this->fungsi->check_previleges('pengajuan_alat');
		if($id == '' || !is_numeric($id)) die;
		$this->m_pengajuan_alat->deleteData($id);
		$this->fungsi->run_js('load_silent("pengajuan/pengajuan_alat","#content")');
		$this->fungsi->message_box("Data Pengajuan Alat berhasil dihapus...","notice");
		$this->fungsi->catat("Menghapus laporan dengan id ".$id);
	}
	public function pdf(){

		$this->load->library('dompdf_gen');

		//$data['pengajuan_alat'] = $this->m_pengajuan_alat->getData('pengajuan_alat')->result();
		$data['pengajuan_alat'] = $this->m_pengajuan_alat->hitung()->result();
		
		$this->load->view('pengajuan_alat_pdf', $data);

		$paper_size = 'A4';
		$orientation = 'landscape';
		$html = $this->output->get_output();
		$this->dompdf->set_paper($paper_size, $orientation);

		$this->dompdf->load_html($html);
		$this->dompdf->render();
		$this->dompdf->stream("Pengajuan alat SILADU.pdf", array('Attachment'=>0));
	}
	
	public function cetak()
	{
		$this->load->library("excel");
		$object = new PHPExcel();
		$object->setActiveSheetIndex(0);
		
		$table_columns = array("No", "Id Periode", "Pengaju", "Nama Alat", "Jumlah", "Harga Satuan", "Status");

		$column = 0;

		foreach($table_columns as $field)
		{
			$object->getActiveSheet()->setCellValueByColumnAndRow($column, 1, $field);
			$column++;
		}
		
		$data = $this->m_pengajuan_alat->hitung()->result();
		$excel_row = 2;
		$i = 1;
		foreach($data as $row)
		{
			$object->getActiveSheet()->setCellValueByColumnAndRow(0, $excel_row, $i);
			$object->getActiveSheet()->setCellValueByColumnAndRow(1, $excel_row, $row->id_periode);
			$object->getActiveSheet()->setCellValueByColumnAndRow(2, $excel_row, $row->pengaju);
			$object->getActiveSheet()->setCellValueByColumnAndRow(3, $excel_row, $row->nama_alat);
			$object->getActiveSheet()->setCellValueByColumnAndRow(4, $excel_row, $row->jumlah);
			$object->getActiveSheet()->setCellValueByColumnAndRow(5, $excel_row, 'Rp. '.number_format($row->harga_satuan));
			$object->getActiveSheet()->setCellValueByColumnAndRow(6, $excel_row, 'Ada');
			$excel_row++;
			$i++;
		}
		
		$object_writer = PHPExcel_IOFactory::createWriter($object, 'Excel2007');
		header('Content-Type: application/vnd.ms-excel');
		header('Content-Disposition: attachment;filename="Pengajuan Alat.xlsx"');
		$object_writer->save('php://output');
	}
	
	public function upload_from_excel($path)
	{
		include_once(APPPATH . "libraries/excel_reader2.php");
		chmod($path, 666);
		$data = new Spreadsheet_Excel_Reader($path);
		$jumlah_baris = $data->rowcount($sheet_index = 0);
		$berhasil = 0;
		for ($i = 2; $i <= $jumlah_baris; $i++) {
			$idperiode 		= $data->val($i, 1);
			$pengaju   		= $data->val($i, 2);
			$namaalat  		= $data->val($i, 3);
			$jumlah  		= $data->val($i, 4);
			$hargasatuan  	= $data->val($i, 5);
			$status  		= $data->val($i, 6);

			$insert = $this->m_pengajuan_alat->insertData(
				['id_periode' => $idperiode, 'pengaju' => $pengaju, 'nama_alat' => $namaalat, 'jumlah' => $jumlah, 'harga_satuan' => $hargasatuan, 'status' => $status]
			);

			if ($insert) $berhasil++;
		}

		$this->fungsi->run_js('load_silent("pengajuan/pengajuan_alat","#content")');
	}

	public function show_importForm()
	{
		$this->fungsi->check_previleges('pengajuan_alat');
		$this->load->library('form_validation');

		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE) {
			$data['status'] = '';
			$data['periode_pengajuan'] = $this->m_periode_pengajuan->getData();
			$this->load->view('pengajuan/pengajuan_alat/v_pengajuan_alat_import', $data);
		} else {
			$datapost = get_post_data(array('file'));
			$this->fungsi->run_js('load_silent("pengajuan/pengajuan_alat","#content")');
			$this->fungsi->message_box("Data pengajuan sukses disimpan...", "success");
		}
	}

	public function insertFile()
	{
		$this->fungsi->check_previleges('nama_bahan');

		$upload_folder = get_upload_folder('./files/pengajuan/');

		$config['upload_path']   = $upload_folder;
		$config['allowed_types'] = 'xlsx|xls';
		$config['max_size']      = '3072';
		$config['encrypt_name']  = true;

		$this->load->library('upload', $config);
		$err = "";
		$msg = "";
		if (!$this->upload->do_upload('ufile')) {
			$err = $this->upload->display_errors('<span class="error_string">', '</span>');
		} else {
			$data = $this->upload->data();
			$this->upload_from_excel($data['full_path']);
		}
	}
}