<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Master_bahan extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_master_bahan');
	}

	public function index()
	{
		$this->fungsi->check_previleges('nama_bahan');
		$data['master_bahan'] = $this->m_master_bahan->getData();
		$this->load->view('master/master_bahan/v_master_bahan_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Master Nama Bahan";
		$subheader = "master_bahan";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("master/master_bahan/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("master/master_bahan/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}
	

	public function show_addForm()
	{
		$this->fungsi->check_previleges('nama_bahan');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'kode', //kolom mana yang mau di required (required:yang harus diisi)
					'label' => 'kode',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['status']='';
			$this->load->view('master/master_bahan/v_master_bahan_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('kode','jenis_bahan','nama_bahan','tahun'));
			$this->m_master_bahan->insertData($datapost);
			$this->fungsi->run_js('load_silent("master/master_bahan","#content")');
			$this->fungsi->message_box("Data Master Nama Bahan sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Master master_bahan dengan data sbb:",true);
		}
	}
	public function insertFile()
	{
		$this->fungsi->check_previleges('nama_bahan');

		$upload_folder = get_upload_folder('./files/');

		$config['upload_path']   = $upload_folder;
		$config['allowed_types'] = 'gif|jpg|jpeg|png';
		$config['max_size']      = '3072';
		// $config['max_width']     = '1024';
		// $config['max_height']    = '1024';
		$config['encrypt_name']  = true;

	    $this->load->library('upload', $config);
	    $err = "";
	    $msg = "";
	    if ( ! $this->upload->do_upload('ufile'))
	    {
	      $err = $this->upload->display_errors('<span class="error_string">','</span>');
	    }
	    else
	    {
	      $data = $this->upload->data();
	      /***********************/
	      // CREATE THUMBNAIL 100x100 - maintain aspect ratio
	      /**********************/
	      $config['image_library'] = 'gd2';
	      $config['source_image'] = $upload_folder.$data['file_name'];
	      $config['maintain_ratio'] = TRUE;
	      $config['width'] = 100;
	      $config['height'] = 100;

	      $this->load->library('image_lib', $config);

	      if ( ! $this->image_lib->resize())
	      {
	        $err = $this->image_lib->display_errors('<span class="error_string">','</span>');
	      }
	      else
	      {
	      	$cek = $this->m_master_bahan->checkq($this->input->post('kode'));
			if ($cek < 1) {
	      	$datapost = array(
			'kode'       => $this->input->post('kode'),
			'nama_bahan'  => $this->input->post('nama_bahan'),
			'jenis_bahan' => $this->input->post('jenis_bahan'),
			'tahun'       => $this->input->post('tahun'),
			'gambar'     => substr($upload_folder,2).$data['file_name'],
			'keterangan' => $this->input->post('keterangan'),
			);
	        $this->m_master_bahan->insertData($datapost);
			$this->fungsi->catat($datapost,"Menambah Master item dengan data sbb:",true);
			$data['msg'] = "item Disimpan!";
			}else{
			$data['msg'] = "Kode Item Sudah ada!";	
			}
			echo json_encode($data);
			
	      }
	    }
			
	}
	public function show_editForm($id='')
	{
		$this->fungsi->check_previleges('nama_bahan'); //untuk mengechek batasan akses
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => '',
					'rules' => ''
				),
				array(
					'field'	=> 'kode',
					'label' => 'kode',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('master_bahan',array('id'=>$id));
			$data['status']='';
			$this->load->view('master/master_bahan/v_master_bahan_edit',$data);
		}
		else
		{
			//$datapost = get_post_data(array('id','kode','jenis_bahan','nama_bahan','tahun'));
			$datapost = array(
				'id'     => $this->input->post('id'), 
				'kode'     => $this->input->post('kode'),
				//'gambar' => null,				
				'nama_bahan'    => $this->input->post('nama_bahan'), 
				'jenis_bahan'   => $this->input->post('jenis_bahan'), 
				'tahun'		=> $this->input->post('tahun'), 
				);
			$this->m_master_bahan->insertData($datapost, false);
			$this->fungsi->catat($datapost,"Mengedit Master master_bahan dengan data sbb:",true);
			$data['msg'] = "Berhasil update data master bahan!";
			$data['post'] = $datapost;
			echo json_encode($data);
		}
	}
	
	public function show_editGambar($id='')
	{
		$this->fungsi->check_previleges('nama_bahan'); //untuk mengechek batasan akses
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => '',
					'rules' => ''
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');
		
		//$datapost = get_post_data(array('id','kode','jenis_bahan','nama_bahan','tahun'));
		$datapost = array(
			'id'     => $this->input->post('id'), 
			'gambar' => null,
			);
		$this->m_master_bahan->insertData($datapost, false);
		$this->fungsi->run_js('load_silent("master/master_bahan","#content")');
	}
	
	public function show_editForm_file($id='')
	{
		$this->fungsi->check_previleges('nama_bahan'); //untuk mengechek batasan akses
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => '',
					'rules' => ''
				),
				array(
					'field'	=> 'kode',
					'label' => 'kode',
					'rules' => 'required'
				)
			);
		$this->form_validation->set_rules($config);
		$this->form_validation->set_error_delimiters('<span class="error-span">', '</span>');

		if ($this->form_validation->run() == FALSE)
		{
			$data['edit'] = $this->db->get_where('master_bahan',array('id'=>$id));
			$data['status']='';
			$this->load->view('master/master_bahan/v_master_bahan_edit',$data);
		}
		
		else
		{
			$upload_folder = get_upload_folder('./files/');

			$config['upload_path']   = $upload_folder;
			$config['allowed_types'] = 'gif|jpg|jpeg|png';
			$config['max_size']      = '3072';
			// $config['max_width']     = '1024';
			// $config['max_height']    = '1024';
			$config['encrypt_name']  = true;

		    $this->load->library('upload', $config);
		    $err = "";
		    $msg = "";
			
		    if ( !$this->upload->do_upload('ufile'))
		    {
				$err = $this->upload->display_errors('<span class="error_string">','</span>');
		    }
		    else
			{
				$data = $this->upload->data();
				/***********************/
				// CREATE THUMBNAIL 100x100 - maintain aspect ratio
				/**********************/
				$config['image_library'] = 'gd2';
				$config['source_image'] = $upload_folder.$data['file_name'];
				$config['maintain_ratio'] = TRUE;
				$config['width'] = 100;
				$config['height'] = 100;

				$this->load->library('image_lib', $config);
				if ( !$this->image_lib->resize())
				{
					$err = $this->image_lib->display_errors('<span class="error_string">','</span>');
				}
				else
				{
					$datapost = array(
								'id'     => $this->input->post('id'), 
								'kode'     => $this->input->post('kode'), 
								'nama_bahan'    => $this->input->post('nama_bahan'), 
								'jenis_bahan'   => $this->input->post('jenis_bahan'), 
								'tahun'		=> $this->input->post('tahun'),
								'gambar'   => substr($upload_folder,2).$data['file_name']
								);
					$this->m_master_bahan->insertData($datapost, false);
					$this->fungsi->run_js('load_silent("master/master_bahan","#content")');
					$this->fungsi->message_box("Data Master Nama Bahan sukses diperbarui...","success");
					$this->fungsi->catat($datapost,"Mengedit Master master_bahan dengan data sbb:",true);
				}
			}
		}
	}
	
	public function delete($id)
	{
		$this->fungsi->check_previleges('nama_bahan');
		if($id == '' || !is_numeric($id)) die;
		$this->m_master_bahan->deleteData($id);
		$this->fungsi->run_js('load_silent("master/master_bahan","#content")');
		$this->fungsi->message_box("Data Nama Bahan berhasil dihapus...","notice");
		$this->fungsi->catat("Menghapus laporan dengan id ".$id);
	}
}

/* End of file master_bahan.php */
/* Location: ./application/controllers/master/master_bahan.php */
