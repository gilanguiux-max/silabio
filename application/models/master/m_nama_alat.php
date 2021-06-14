<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_nama_alat extends CI_Model {

	public function getData($value='')
	{
		$this->db->from('master_nama_alat ma');
		$this->db->order_by('ma.nama_alat', 'asc');
		return $this->db->get();
	}
	public function getDatakondisi($value='')
	{
		$this->db->from('kondisi_barang kb');
		$this->db->order_by('kb.id', 'asc');
		return $this->db->get();
	}

	public function insertData($data,$new=true)
	{
		if($new)
        {
            $this->db->insert('master_nama_alat',$data);
        }
        else
        {
            $this->db->where('id',$data['id']);
            $this->db->update('master_nama_alat',$data);
        }
	}
	public function checkq($str = '') {
		$this->db->where('kode', $str);
		return $this->db->get('master_nama_alat')->num_rows();
	}
	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('master_nama_alat',$data);
	}

	public function deleteData($id='')
	{
		$this->db->where('id', $id)->delete('master_nama_alat');
	}

}

/* End of file m_nama_alat.php */
/* Location: ./application/models/master/m_nama_alat.php */