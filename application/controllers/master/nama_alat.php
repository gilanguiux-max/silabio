<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Nama_alat extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
		$this->load->model('master/m_nama_alat');
	}

	public function index()
	{
		$this->fungsi->check_previleges('nama_alat');
		$data['nama_alat'] = $this->m_nama_alat->getData();
		$this->load->view('master/nama_alat/v_nama_alat_list',$data);
	}

	public function form($param='')
	{
		$content   = "<div id='divsubcontent'></div>";
		$header    = "Form Master Nama Alat";
		$subheader = "nama_alat";
		$buttons[] = button('jQuery.facebox.close()','Tutup','btn btn-default','data-dismiss="modal"');
		echo $this->fungsi->parse_modal($header,$subheader,$content,$buttons,"");
		if($param=='base'){
			$this->fungsi->run_js('load_silent("master/nama_alat/show_addForm/","#divsubcontent")');	
		}else{
			$base_kom=$this->uri->segment(5);
			$this->fungsi->run_js('load_silent("master/nama_alat/show_editForm/'.$base_kom.'","#divsubcontent")');	
		}
	}

	public function show_addForm()
	{
		$this->fungsi->check_previleges('nama_alat');
		$this->load->library('form_validation');
		$config = array(
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
			$data['status']='';
			$this->load->view('master/nama_alat/v_nama_alat_add',$data);
		}
		else
		{
			$datapost = get_post_data(array('kode','nama_alat','keterangan','id_status'));
			$this->m_nama_alat->insertData($datapost);
			$this->fungsi->run_js('load_silent("master/nama_alat","#content")');
			$this->fungsi->message_box("Data Master Nama Alat sukses disimpan...","success");
			$this->fungsi->catat($datapost,"Menambah Master nama_alat dengan data sbb:",true);
		}
	}
	public function insertFile()
	{
		$this->fungsi->check_previleges('nama_alat');

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
	      	$cek = $this->m_nama_alat->checkq($this->input->post('kode'));
			if ($cek < 1) {
	      	$datapost = array(
			'kode'       => $this->input->post('kode'),
			'nama_alat'       => $this->input->post('nama_alat'),
			'gambar'     => substr($upload_folder,2).$data['file_name'],
			'keterangan' => $this->input->post('keterangan'),
			);
	        $this->m_nama_alat->insertData($datapost);
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
		$this->fungsi->check_previleges('nama_alat');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => '',
					'rules' => ''
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
			$data['edit'] = $this->db->get_where('master_nama_alat',array('id'=>$id));
			$data['status']='';
			$this->load->view('master/nama_alat/v_nama_alat_edit',$data);
		}
		else
		{
			//$datapost = get_post_data(array('id','kode','nama_alat','keterangan','id_status'));
			$datapost = array(
				'id'     => $this->input->post('id'), 
				'kode'     => $this->input->post('kode'), 
				'nama_alat'    => $this->input->post('nama_alat'), 
				'keterangan'   => $this->input->post('keterangan'), 
				);
			$this->m_nama_alat->insertData($datapost,false);
			$this->fungsi->catat($datapost,"Mengedit Master nama_alat dengan data sbb:",true);
			$data['msg'] = "Berhasil! Silahkan Logout Dulu untuk melihat Perubahan";
			echo json_encode($data);
		}
	}	
	
	public function show_editForm_file($id='')
	{
		$this->fungsi->check_previleges('nama_alat');
		$this->load->library('form_validation');
		$config = array(
				array(
					'field'	=> 'id',
					'label' => '',
					'rules' => ''
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
			$data['edit'] = $this->db->get_where('master_nama_alat',array('id'=>$id));
			$data['status']='';
			$this->load->view('master/nama_alat/v_nama_alat_edit',$data);
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
					'nama_alat'    => $this->input->post('nama_alat'), 
					'keterangan'   => $this->input->post('keterangan'), 
					'gambar'   => substr($upload_folder,2).$data['file_name']
					);
					
					$this->m_nama_alat->insertData($datapost,false);
					$this->fungsi->run_js('load_silent("master/nama_alat","#content")');
					$this->fungsi->message_box("Data Master Nama Alat sukses diperbarui...","success");
					$this->fungsi->catat($datapost,"Mengedit Master nama_alat dengan data sbb:",true);
					$data['msg'] = "Berhasil! Silahkan Logout Dulu untuk melihat Perubahan";
					echo json_encode($data);
				}
			}
		}
	}
	
	public function show_editGambar($id='')
	{
		$this->fungsi->check_previleges('nama_alat');
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
		$this->m_nama_alat->insertData($datapost,false);
		$this->fungsi->run_js('load_silent("master/nama_alat","#content")');
	}
	
	public function delete($id)
	{
		$this->fungsi->check_previleges('nama_alat');
		if($id == '' || !is_numeric($id)) die;
		$this->m_nama_alat->deleteData($id);
		$this->fungsi->run_js('load_silent("master/nama_alat","#content")');
		$this->fungsi->message_box("Data Nama Alat berhasil dihapus...","notice");
		$this->fungsi->catat("Menghapus laporan dengan id ".$id);
	}
}

/* End of file nama_alat.php */
/* Location: ./application/controllers/master/nama_alat.php */