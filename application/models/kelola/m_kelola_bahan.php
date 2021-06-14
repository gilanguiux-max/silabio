<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_kelola_bahan extends CI_Model
{
    public function getData()
    {
        $this->db->select('kelola_bahan.*,kondisi_barang.kondisi as kond, master_bahan.nama_bahan, master_satuan.nama_satuan, kategori.kategori_alat_bahan, master_sumber_pendanaan.sumber_pendanaan, kelola_penyimpanan.Nama_penyimpanan');
		$this->db->from('kelola_bahan');
		$this->db->join('master_bahan', 'master_bahan.id = kelola_bahan.id_nama_bahan');
		$this->db->join('master_satuan', 'master_satuan.id = kelola_bahan.satuan_bahan');
		$this->db->join('kategori', 'kategori.id = kelola_bahan.kategori');
		$this->db->join('kondisi_barang', 'kondisi_barang.id = kelola_bahan.kondisi');
		$this->db->join('master_sumber_pendanaan', 'master_sumber_pendanaan.id = kelola_bahan.pendanaan');
		$this->db->join('kelola_penyimpanan', 'kelola_penyimpanan.id = kelola_bahan.lokasi');
		$this->db->order_by('master_bahan.nama_bahan', 'asc');
		return $this->db->get();
    }

    public function insertData($data)
    {
        $this->db->insert('kelola_bahan',$data);
    }

    public function updateData($data)
    {
        $this->db->where('id',$data['id']);
        $this->db->update('kelola_bahan',$data);
    }

    public function deleteData($id)
	{
		$this->db->where('id', $id);
        $this->db->delete('kelola_bahan');
	}

    public function namaBahan()
    {
        $this->db->select('kelola_bahan.*, master_bahan.nama_bahan');
        $this->db->from('kelola_bahan');
        $this->db->join('master_bahan', 'master_bahan.id = kelola_bahan.id_nama_bahan');
        return $this->db->get();
    }
    function get_peminjaman()
	{
		$this->db->select('id_bahan,sum(qty) as hit');
		$this->db->where_not_in('status',array(0,2));
		$this->db->group_by('id_bahan');
        $res=$this->db->get('data_peminjaman_bahan');
        
		$data=array();
		foreach ($res->result() as $key ) {
			$data[$key->id_bahan]=$key->hit;
		}
		return $data;
	}
    function get_hapus()
	{
		$this->db->select('id_bahan,sum(qty_hapus) as hit');
		$this->db->where('status',2);
		$this->db->group_by('id_bahan');
		$res=$this->db->get('data_peminjaman_bahan');
		$data=array();
		foreach ($res->result() as $key ) {
			$data[$key->id_bahan]=$key->hit;
		}
		return $data;
	}
	function pinjambahan($id)
	{
		$this->db->select('*');
		$this->db->from('data_peminjaman_bahan al');
		$this->db->join('kelola_bahan kel', 'kel.id = al.id_bahan', 'left');
		$this->db->join('master_bahan mas', 'mas.id = kel.id_nama_bahan', 'left');
		$this->db->join('data_peminjaman dat', 'dat.id = al.id_peminjaman', 'left');
		$this->db->where('al.status', 1);
		$this->db->where('al.id_bahan', $id);
		$res= $this->db->get()->result();		
		
		return $res;
	}
	function habisbahan($id)
	{
		$this->db->select('*');
		$this->db->from('data_peminjaman_bahan al');
		$this->db->join('kelola_bahan kel', 'kel.id = al.id_bahan', 'left');
		$this->db->join('master_bahan mas', 'mas.id = kel.id_nama_bahan', 'left');
		$this->db->join('data_peminjaman dat', 'dat.id = al.id_peminjaman', 'left');
		$this->db->where('al.status', 2);
		$this->db->where('al.qty_hapus >', 0);
		$this->db->where('al.id_bahan', $id);
		$res= $this->db->get()->result();		
		
		return $res;
	}
}