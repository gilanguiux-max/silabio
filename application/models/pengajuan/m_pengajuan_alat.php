<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_pengajuan_alat extends CI_Model {

    //select->read
	public function getData($value='')
	{
		$this->db->from('pengajuan_alat mb');
		$this->db->order_by('mb.id_pengajuan', 'desc');
		return $this->db->get();
	}

    //insert->create
	public function insertData($data='')
	{
		
        $this->db->insert('pengajuan_alat',$data);
       
	}
    //update
	public function updateData($data='')
	{
		 $this->db->where('id_pengajuan',$data['id_pengajuan']);
            $this->db->update('pengajuan_alat',$data);
	}
    //delete
	public function deleteData($id='')
	{
		$this->db->where('id_pengajuan', $id);
        $this->db->delete('pengajuan_alat');
	}
	public function join()
	{
        $this->db->select('pengajuan_alat.*, periode_pengajuan.id');
		$this->db->from('pengajuan_alat');
		$this->db->join('periode_pengajuan', 'periode_pengajuan.id = pengajuan_alat.id_periode');
		
		return $this->db->get();
	} 
	public function hitung(){
		$sql ="SELECT id_pengajuan, id_periode, pengaju, nama_alat, jumlah, harga_satuan ,(jumlah * harga_satuan) as total
		FROM pengajuan_alat ORDER BY id_pengajuan ";
		return $this->db->query($sql);
	}
	
	public function upload_file($filename){
		$this->load->library('upload'); // Load librari upload
		
		$config['upload_path'] = './excel/';
		$config['allowed_types'] = 'xlsx';
		$config['max_size']  = '2048';
		$config['overwrite'] = true;
		$config['file_name'] = $filename;
	  
		$this->upload->initialize($config); // Load konfigurasi uploadnya
		if($this->upload->do_upload('file')){ // Lakukan upload dan Cek jika proses upload berhasil
			// Jika berhasil :
			$return = array('result' => 'success', 'file' => $this->upload->data(), 'error' => '');
			return $return;
		}
		else{
			// Jika gagal :
			$return = array('result' => 'failed', 'file' => '', 'error' => $this->upload->display_errors());
			return $return;
		}
	}
}