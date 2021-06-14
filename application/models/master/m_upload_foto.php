<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_upload_foto extends CI_Model {
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
}