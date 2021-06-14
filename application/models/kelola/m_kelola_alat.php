<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_kelola_alat extends CI_Model {

	public function getData($value='')
	{
		$this->db->from('kelola_alat ma');
		$this->db->order_by('ma.id', 'desc');
		return $this->db->get();
	}

	public function insertData($data='')
	{
		
        $this->db->insert('kelola_alat',$data);
       
	}

	public function updateData($data='')
	{
		 $this->db->where('id',$data['id']);
            $this->db->update('kelola_alat',$data);
	}

	public function deleteData($id='')
	{
		$this->db->where('id', $id);
        $this->db->delete('kelola_alat');
	}

	public function join()
	{
        $this->db->select('kelola_alat.*, master_nama_alat.nama_alat, master_satuan.nama_satuan, kategori.kategori_alat_bahan, master_sumber_pendanaan.sumber_pendanaan, kelola_penyimpanan.Nama_penyimpanan');
		$this->db->from('kelola_alat');
		$this->db->join('master_nama_alat', 'master_nama_alat.id = kelola_alat.id_nama_alat');
		$this->db->join('master_satuan', 'master_satuan.id = kelola_alat.satuan_alat');
		$this->db->join('kategori', 'kategori.id = kelola_alat.kategori');
		$this->db->join('master_sumber_pendanaan', 'master_sumber_pendanaan.id = kelola_alat.pendanaan');
		$this->db->join('kelola_penyimpanan', 'kelola_penyimpanan.id = kelola_alat.lokasi');
		$this->db->order_by('master_nama_alat.nama_alat', 'asc');
		
		return $this->db->get();
	}

    public function getList()
    {
        $this->db->from('cms_user')->get();
	}
	function get_peminjaman()
	{
		$this->db->select('id_alat,sum(qty) as hit');
		$this->db->where_not_in('status',array(0,2));
		$this->db->group_by('id_alat');
		$res=$this->db->get('data_peminjaman_alat');
		$data=array();
		foreach ($res->result() as $key ) {
			$data[$key->id_alat]=$key->hit;
		}
		return $data;
	}
	function pinjamalat($id)
	{
		$this->db->select('*');
		$this->db->from('data_peminjaman_alat al');
		$this->db->join('kelola_alat kel', 'kel.id = al.id_alat', 'left');
		$this->db->join('master_nama_alat mas', 'mas.id = kel.id_nama_alat', 'left');
		$this->db->join('data_peminjaman dat', 'dat.id = al.id_peminjaman', 'left');
		$this->db->where('al.status', 1);
		$this->db->where('al.id_alat', $id);
		$res= $this->db->get()->result();		
		
		return $res;
	}

}

/* End of file m_nama_alat.php */
/* Location: ./application/models/master/m_nama_alat.php */