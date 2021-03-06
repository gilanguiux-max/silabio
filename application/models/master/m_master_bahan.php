<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_master_bahan extends CI_Model {

    //select->read
	public function getData($value='')
	{
		$this->db->from('master_bahan mb');
		$this->db->order_by('mb.nama_bahan', 'asc');
		return $this->db->get();
	}

    //insert->create
	public function insertData($data,$new=true)
	{
		if($new)
        {
            $this->db->insert('master_bahan',$data);
        }
        else
        {
            $this->db->where('id',$data['id']);
            $this->db->update('master_bahan',$data);
        }
	}
	public function checkq($str = '') {
		$this->db->where('kode', $str);
		return $this->db->get('master_bahan')->num_rows();
	}
    //update
	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('master_bahan',$data);
	}
    //delete
	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('master_bahan');
	}

}

/* End of file m_nama_alat.php */
/* Location: ./application/models/master/m_nama_alat.php */