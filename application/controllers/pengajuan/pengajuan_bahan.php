<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Pengajuan_bahan extends CI_Controller {


	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('pengajuan/m_pengajuan_bahan');
		$this->load->model('pengajuan/m_periode_pengajuan');
	}
	public function index()
	{
		$this->fungsi->check_previleges('pengajuan_bahan');
		$data['pengajuan_bahan'] = $this->m_pengajuan_bahan->getData();
		$data['id_periode']= $this->m_periode_pengajuan->getData();
		$this->load->view('pengajuan/pengajuan_bahan/pengajuan_bahan_list', $data);
    }

    public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Pengajuan Bahan";
		$subheader = "Pengajuan Bahan";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("pengajuan/pengajuan_bahan/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("pengajuan/pengajuan_bahan/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('pengajuan_bahan');
		$this->load->library('form_validation');
		$config = array(
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
			$data['id'] = $this->m_periode_pengajuan->getData();
			$data['status']='';
			$this->load->view('pengajuan/pengajuan_bahan/pengajuan_bahan_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','id_periode','nama_bahan','pengaju','jenis_bahan','jumlah','harga_satuan','status'));
			$this->db->insert('pengajuan_bahan', $datapost);
			$this->fungsi->run_js('load_silent("pengajuan/pengajuan_bahan","#content")');
			$this->fungsi->message_box("Data pengajuan sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah pengajuan dengan data sbb:",true);
		}
	}

    public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('pengajuan_bahan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => 'id',
					'rules' => ''
				),
				array(
					'field'	=> 'nama_bahan',
					'label' => 'nama_bahan',
					'rules' => 'required'
				),
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('pengajuan_bahan',array('id'=>$id));
			$data['id'] = $this->m_periode_pengajuan->getData();
			$data['status']='';
			$this->load->view('pengajuan/pengajuan_bahan/pengajuan_bahan_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','id_periode','pengaju','nama_bahan','jenis_bahan','jumlah','harga_satuan','status'));
			$this->m_pengajuan_bahan->updateData($datapost);
			$this->fungsi->run_js('load_silent("pengajuan/pengajuan_bahan","#content")');
			$this->fungsi->message_box("Data Pengajuan sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit pengajuan_alat dengan data sbb:",true);
		}
    }
    public function delete($id) 
	{
		$this->fungsi->check_previleges('pengajuan_bahan');
		if($id == '' || !is_numeric($id)) die;
		$this->m_pengajuan_bahan->deleteData($id);
		$this->fungsi->run_js('load_silent("pengajuan/pengajuan_bahan","#content")');
		$this->fungsi->message_box("Data Pengajuan Bahan berhasil dihapus...","notice");
		$this->fungsi->catat("Menghapus laporan dengan id ".$id);
	}
	public function pdf(){

		$this->load->library('dompdf_gen');

		//$data['pengajuan_alat'] = $this->m_pengajuan_alat->getData('pengajuan_alat')->result();
		$data['pengajuan_bahan'] = $this->m_pengajuan_bahan->hitung()->result();
		
		$this->load->view('pengajuan_bahan_pdf', $data);

		$paper_size = 'A4';
		$orientation = 'landscape';
		$html = $this->output->get_output();
		$this->dompdf->set_paper($paper_size, $orientation);

		$this->dompdf->load_html($html);
		$this->dompdf->render();
		$this->dompdf->stream("Pengajuan bahan SILADU.pdf", array('Attachment'=>0));
	}
	
	public function cetak()
	{
		$this->load->library("excel");
		$object = new PHPExcel();
		$object->setActiveSheetIndex(0);
		
		$table_columns = array("No", "Id Periode", "Pengaju", "Nama Bahan", "Jenis Bahan", "Jumlah", "Harga Satuan", "Status");

		$column = 0;

		foreach($table_columns as $field)
		{
			$object->getActiveSheet()->setCellValueByColumnAndRow($column, 1, $field);
			$column++;
		}
		
		$data = $this->m_pengajuan_bahan->hitung()->result();
		$excel_row = 2;
		$i = 1;
		foreach($data as $row)
		{
			$object->getActiveSheet()->setCellValueByColumnAndRow(0, $excel_row, $i);
			$object->getActiveSheet()->setCellValueByColumnAndRow(1, $excel_row, $row->id_periode);
			$object->getActiveSheet()->setCellValueByColumnAndRow(2, $excel_row, $row->pengaju);
			$object->getActiveSheet()->setCellValueByColumnAndRow(3, $excel_row, $row->nama_bahan);
			$object->getActiveSheet()->setCellValueByColumnAndRow(4, $excel_row, $row->jenis_bahan);
			$object->getActiveSheet()->setCellValueByColumnAndRow(5, $excel_row, $row->jumlah);
			$object->getActiveSheet()->setCellValueByColumnAndRow(6, $excel_row, 'Rp. '.number_format($row->harga_satuan));
			$object->getActiveSheet()->setCellValueByColumnAndRow(7, $excel_row, 'Ada');
			$excel_row++;
			$i++;
		}
		
		$object_writer = PHPExcel_IOFactory::createWriter($object, 'Excel2007');
		header('Content-Type: application/vnd.ms-excel');
		header('Content-Disposition: attachment;filename="Pengajuan Bahan.xlsx"');
		$object_writer->save('php://output');
	}

}

/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */