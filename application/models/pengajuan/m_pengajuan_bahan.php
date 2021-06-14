<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_pengajuan_bahan extends CI_Model
{

    public function getData()
    {   
        $this->db->from('pengajuan_bahan');
        
        return $this->db->get();
    }

    public function addData($data)
    {
        $this->db->insert('pengajuan_bahan', $data);
    }

    public function updateData($data)
	{
		$this->db->where('id',$data['id']);
        $this->db->update('pengajuan_bahan',$data);
	}

    public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('pengajuan_bahan');
    }
    public function hitung(){
        $sql ="SELECT id, id_periode, pengaju, nama_bahan, jenis_bahan, jumlah, harga_satuan ,(jumlah * harga_satuan) as total
        FROM pengajuan_bahan ORDER BY id";
        return $this->db->query($sql);
    }
}