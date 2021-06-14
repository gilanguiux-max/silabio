<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_upload_dokumen extends CI_Model {
	
	public function getAllData()
	{
		return $this->db->get('other_dokumen');
	}
	
	public function insertData($data='')
	{
		$this->db->insert('other_dokumen', $data);
	}
	
	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('other_dokumen');
	}
	
	public function getData($id='')
	{
		$this->db->where('id', $id);
        return $this->db->get('other_dokumen');
	}
}