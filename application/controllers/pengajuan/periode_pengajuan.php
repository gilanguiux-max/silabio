<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class periode_pengajuan extends CI_Controller {
	
	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('pengajuan/m_periode_pengajuan');
		$this->load->model('pengajuan/m_pengajuan_alat');
	}

	public function index()
	{
		$this->fungsi->check_previleges('periode_pengajuan');
		$data['periode_pengajuan'] = $this->m_periode_pengajuan->tampil();
		// $data['sumber_pendanaan']  = get_options($this->db->query('select id, sumber_pendanaan from master_sumber_pendanaan'),true);
		// $data['status_pengajuan']  = get_options($this->db->query('select id, status_pengajuan from status_pengajuan'),true);
		$this->load->view('pengajuan/periode_pengajuan/v_periode_pengajuan_list',$data);
    }
    public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Periode Pengajuan";
		$subheader = "periode_pengajuan";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("pengajuan/periode_pengajuan/show_addForm/","#divsubcontent")');	
        }
		else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("pengajuan/periode_pengajuan/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('periode_pengajuan');
		$this->load->library('form_validation');
		$config = array(
                array(
					'field'	=> 'semester',
					'label' => 'semester',
					'rules' => 'required'
                ),
                array(
					'field'	=> 'tgl_pengajuan',
					'label' => 'tgl_pengajuan',
					'rules' => 'required'
                ),
                array(
					'field'	=> 'sumber_pendanaan',
					'label' => 'sumber_pendanaan',
					'rules' => 'required'
                )
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$data['sumber_pendanaan']  = $this->db->query('select id, sumber_pendanaan from master_sumber_pendanaan')->result();
			$data['status_pengajuan']  = $this->db->query('select id, status_pengajuan from status_pengajuan')->result();
			
            $kode = 'P-PGN-' . date('ymd');
            $kode_terakhir = $this->m_periode_pengajuan->getMax('periode_pengajuan', 'id', $kode);
            $kode_tambah = substr($kode_terakhir, -5, 5);
            $kode_tambah++;
            $number = str_pad($kode_tambah, 5, '0', STR_PAD_LEFT);
            $data['id'] = $kode . $number;
			$this->load->view('pengajuan/periode_pengajuan/v_periode_pengajuan_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','semester','tgl_pengajuan','sumber_pendanaan','tgl_pendanaan_turun','pajak','status_pengajuan','status'));
			$this->m_periode_pengajuan->insertData($datapost);
			$this->fungsi->run_js('load_silent("pengajuan/periode_pengajuan","#content")');
			$this->fungsi->message_box("Data Periode Pengajuan sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Pengajuan Periode_pengajuan dengan data sbb:",true);
		}
	}

	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('periode_pengajuan');
		$this->load->library('form_validation');
		$config = array(
			array(
				'field'	=> 'id',
				'label' => 'wes mbarke',
				'rules' => ''
			),
			array(
                'field'	=> 'id',
                'label' => 'id',
                'rules' => 'required'
            ),
            array(
                'field'	=> 'semester',
                'label' => 'semester',
                'rules' => 'required'
            ),
            array(
                'field'	=> 'tgl_pengajuan',
                'label' => 'tgl_pengajuan',
                'rules' => 'required'
            ),
            array(
                'field'	=> 'sumber_pendanaan',
                'label' => 'sumber_pendanaan',
                'rules' => 'required'
            )
		);
	$this->form_validation->set_rules($config);
	$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('periode_pengajuan',array('id'=>$id));
			$data['sumber_pendanaan']  = $this->db->query('select id, sumber_pendanaan from master_sumber_pendanaan')->result();
			$data['status_pengajuan']  = $this->db->query('select id, status_pengajuan from status_pengajuan')->result();
			$this->load->view('pengajuan/periode_pengajuan/v_periode_pengajuan_edit',$data);
		}
		else
		{
			$datapost = get_post_data(array('id','semester','tgl_pengajuan','sumber_pendanaan','tgl_pendanaan_turun','pajak','status_pengajuan','status'));
			$this->m_periode_pengajuan->updateData($datapost);
			$this->fungsi->run_js('load_silent("pengajuan/periode_pengajuan","#content")');
			$this->fungsi->message_box("Data Periode Pengajuan sukses diperbarui...","success");
			$this->fungsi->catat($datapost,"Mengedit Pengajuan periode_pengajuan dengan data sbb:",true);
		}
	}
	public function delete($id)
	{
		$this->fungsi->check_previleges('periode_pengajuan');
		if($id == '' || !is_numeric($id)) die;
		$this->m_periode_pengajuan->deleteData($id);
		$this->fungsi->run_js('load_silent("pengajuan/periode_pengajuan","#content")');
		$this->fungsi->message_box("Data Periode Pengajuan berhasil dihapus...","notice");
		$this->fungsi->catat("Menghapus laporan dengan id ".$id);
	}
	
	public function cetak()
	{
		$this->load->library("excel");
		$object = new PHPExcel();
		$object->setActiveSheetIndex(0);
		
		$table_columns = array("No", "Id Pengajuan", "Semester", "Tgl Pengajuan", "Sumber Pendanaan", "Tgl Pendanaan Turun", "Pajak", "Status pengajuan", "Status");

		$column = 0;

		foreach($table_columns as $field)
		{
			$object->getActiveSheet()->setCellValueByColumnAndRow($column, 1, $field);
			$column++;
		}
		
		$data = $this->m_periode_pengajuan->tampil()->result();
		$excel_row = 2;
		$i = 1;
		foreach($data as $row)
		{
			$object->getActiveSheet()->setCellValueByColumnAndRow(0, $excel_row, $i);
			$object->getActiveSheet()->setCellValueByColumnAndRow(1, $excel_row, $row->id);
			$object->getActiveSheet()->setCellValueByColumnAndRow(2, $excel_row, $row->semester);
			$object->getActiveSheet()->setCellValueByColumnAndRow(3, $excel_row, date('j F Y',strtotime($row->tgl_pengajuan)));
			$object->getActiveSheet()->setCellValueByColumnAndRow(4, $excel_row, $row->sumber_pendanaan);
			$object->getActiveSheet()->setCellValueByColumnAndRow(5, $excel_row, date('j F Y',strtotime($row->tgl_pendanaan_turun)));
			$object->getActiveSheet()->setCellValueByColumnAndRow(6, $excel_row, 'Rp. '.number_format($row->pajak));
			$object->getActiveSheet()->setCellValueByColumnAndRow(7, $excel_row, $row->status_pengajuan);
			$object->getActiveSheet()->setCellValueByColumnAndRow(8, $excel_row, 'Ada');
			$excel_row++;
			$i++;
		}
		
		$object_writer = PHPExcel_IOFactory::createWriter($object, 'Excel2007');
		header('Content-Type: application/vnd.ms-excel');
		header('Content-Disposition: attachment;filename="Periode Pengajuan.xlsx"');
		$object_writer->save('php://output');
	}

}
	