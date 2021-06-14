<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_peminjaman extends CI_Model {

	public function getData($value=0)
	{
		#semua
		if($value!=4){
			$this->db->where('status', $value);
		}
		return $this->db->get('data_peminjaman');
	}
	public function getAllData()
	{
		return $this->db->get('data_peminjaman');
	}
	public function getDatapinjam($value=0)
	{
		$this->db->where('jenis_pinjaman', 1);
		$this->db->where('status', $value);
		return $this->db->get('data_peminjaman');
	}
	public function getDatapraktikum($value=0)
	{
		$this->db->where('jenis_pinjaman', 2);
		$this->db->where('status', $value);
		return $this->db->get('data_peminjaman');
	}
	public function getDatajatuhtempo()
	{
		$this->db->where('status', 1);
		$this->db->where("CONCAT(tgl_kembali,' ',jam_kembali) <", date("Y-m-d H:i"));
		$res=$this->db->get('data_peminjaman');
		return $res;
	}

	public function getDataDet($value='')
	{
		$this->db->where('id', $value);
		return $this->db->get('data_peminjaman');
	}

	public function getDetailBahan($value='')
	{
		$this->db->where('dp.id_peminjaman', $value);
		$this->db->join('kelola_bahan kb', 'kb.id = dp.id_bahan', 'left');
		$this->db->join('master_bahan mb', 'mb.id = kb.id_nama_bahan', 'left');
		$this->db->join('kondisi_barang kon', 'kon.id = kb.kondisi', 'left');
		$this->db->select('dp.*,mb.nama_bahan,kon.kondisi, kb.tahun');
		return $this->db->get('data_peminjaman_bahan dp');
	}

	public function getDetailAlat($value='')
	{
		$this->db->where('dp.id_peminjaman', $value);
		$this->db->join('kelola_alat ka', 'ka.id = dp.id_alat', 'left');
		$this->db->join('master_nama_alat mb', 'mb.id = ka.id_nama_alat', 'left');
		$this->db->join('kondisi_barang kon', 'kon.id = ka.kondisi', 'left');
		$this->db->select('dp.*,mb.nama_alat,kon.kondisi, ka.tahun');
		return $this->db->get('data_peminjaman_alat dp');
	}
	
	public function insertData($data='')
	{
		$this->db->insert('data_peminjaman', $data);
	}
	
	public function insertpeminjaman($value='')
	{
		$value['status']=0;
		$this->db->insert('data_peminjaman', $value);
	}
	public function editpeminjaman($value='')
	{
		$this->db->where('id', $value['id']);
		$this->db->update('data_peminjaman', $value);
		echo $this->db->last_query();
		
	}
	public function update_detail_pinjaman($barang,$data)
	{
		$this->db->where('id', $data['id']);
		$dataup['qty']=$data['qty'];
		$dataup['status']=2;#dikembalikan
		$dataup['qty_hapus']=$data['qty_hapus'];
		$dataup['qty_awal']=$data['qty_awal'];
		$this->db->update('data_peminjaman_'.$barang, $dataup);
	}
	public function deleteDetailItem($value='')
	{
		$this->db->where('id', $value);
		$this->db->delete('data_stok_detail');
	}

	public function insertpeminjamanbahan($value='')
	{
		$value['status']=0;
		$this->db->insert('data_peminjaman_bahan', $value);
	}
	
	public function insertbahan($data)
	{
		$this->db->insert('data_peminjaman_bahan', $data);
	}
	public function insertalat($data)
	{
		$this->db->insert('data_peminjaman_alat', $data);
	}
	
	function get_peminjaman_bahan($value)
	{
		$this->db->select('id_bahan,count(*) as hit');
		$this->db->where('id_bahan', $value);
		$this->db->where_not_in('status',array(0,2));
		$res=$this->db->get('data_peminjaman_bahan');
		$data=array();
		foreach ($res->result() as $key ) {
			$data[$key->id_bahan]=$key->hit;
		}
		return $data;
	}
	function get_peminjaman_alat($val)
	{
		$this->db->select('id_alat,count(*) as hit');
		$this->db->where_not_in('status',array(0,2));
		$this->db->where('id_alat', $val);
		$res=$this->db->get('data_peminjaman_alat');
		$data=array();
		foreach ($res->result() as $key ) {
			$data[$key->id_alat]=$key->hit;
		}
		return $data;
	}
	public function getKelolabahan($id_bahan)
	{
		$this->db->where('id', $id_bahan);
		$res=$this->db->get('kelola_bahan');
		return $res->row()->stock;
	}
	public function getKelolaalat($id_alat)
	{
		$this->db->where('id', $id_bahan);
		$res=$this->db->get('kelola_alat');
		return $res->row()->stok;
	}
	public function insertpeminjamanalat($value='')
	{
		$value['status']=0;
		$this->db->insert('data_peminjaman_alat', $value);
	}
	public function getNopeminjaman($value='')
	{
		$year = date('Y');
		$month = date('m');
		$this->db->where('DATE_FORMAT(date,"%Y")', $year);	
		$this->db->where('DATE_FORMAT(date,"%m")', $month);	
		$hasil = $this->db->get('data_peminjaman');
        if ($hasil->num_rows()>0) {
            return $hasil->num_rows()+1;
        } else {
            return '1';
        }
	}
	function cekActAlatBahan($alatbahan,$peminjaman,$id_objek,$status)
	{
		if($alatbahan==2){
			$base="alat";
		}else{
			$base="bahan";
		}
		$object['status']=$status;
		if($base=="bahan" && $status==1){
			$qty_awal=$this->get_detail_pinjaman($base,$peminjaman)->qty_awal;
			$object['qty']=$qty_awal;
			$object['qty_hapus']=0;
			$object['qty_awal']=0;
		}
		$this->db->where('id_peminjaman', $peminjaman);
		$this->db->where('id', $id_objek);
		$this->db->update('data_peminjaman_'.$base, $object);
		
	}
	function cekpeminjamanclear($peminjaman){
		$this->db->select('status');
		$this->db->where('id_peminjaman', $peminjaman);
		$alat=$this->db->get('data_peminjaman_alat')->result();
		
		$alatpjm=0;$alatkembali=0;$alatrusak=0;
		foreach($alat as $rowalat){
			if($rowalat->status==1){
				$alatpjm=+1;
			}elseif($rowalat->status==2){
				$alatkembali=+1;
			}else{
				$alatrusak=+1;
			}
		}
		
		if($alatrusak>0){
			$object['status']=3;
			$this->db->where('id', $peminjaman);
			$this->db->update('data_peminjaman', $object);
		}elseif($alatpjm>0){
			$object['status']=1;
			$this->db->where('id', $peminjaman);
			$this->db->update('data_peminjaman', $object);
		}else{
		$this->db->select('status');
		$this->db->where('id_peminjaman', $peminjaman);
		$alat=$this->db->get('data_peminjaman_bahan')->result();
		
		
		$bahanpjm=0;$bahankembali=0;$bahanrusak=0;
			foreach($alat as $rowbahan){
				if($rowbahan->status==1){
					$bahanpjm=+1;
				}elseif($rowbahan->status==2){
					$bahankembali=+1;
				}else{
					$bahanrusak=+1;
				}
			}
			
			if($bahanrusak>0){
				$object['status']=3;
				$this->db->where('id', $peminjaman);
				$this->db->update('data_peminjaman', $object);
			}elseif($bahanpjm>0){
				$object['status']=1;
				$this->db->where('id', $peminjaman);
				$this->db->update('data_peminjaman', $object);
			}else{
				$object['status']=2;
				$this->db->update('data_peminjaman', $object);
			}
			// echo $bahanpjm.'-'.$bahanrusak.'-'.$bahankembali.'-'.$alatpjm.'-'.$alatrusak.'-'.$alatkembali;
			// echo $this->db->last_query();
			
		}
	}
	function hapuspeminjaman($id)
	{
		$object['status']=1;
		$this->db->where('id', $id);
		$this->db->delete('data_peminjaman');
		$this->db->where('id_peminjaman', $id);
		$this->db->delete('data_peminjaman_alat');
		$this->db->where('id_peminjaman', $id);
		$this->db->delete('data_peminjaman_bahan');
		
	}
	
	function setujuiPinjaman($id)
	{
		$object['status']=1;
		$this->db->where('id', $id);
		$this->db->update('data_peminjaman', $object);
		$this->db->where('id_peminjaman', $id);
		$this->db->update('data_peminjaman_alat', $object);
		$this->db->where('id_peminjaman', $id);
		$this->db->update('data_peminjaman_bahan', $object);
		
	}
	function kembalikanPinjaman($id)
	{
		$object['status']=2;
		$this->db->where('id', $id);
		$this->db->update('data_peminjaman', $object);
		$this->db->where('id_peminjaman', $id);
		$this->db->update('data_peminjaman_alat', $object);
		$this->db->where('id_peminjaman', $id);
		$this->db->update('data_peminjaman_bahan', $object);
		
	}
	function get_kelola_($nama)
	{
		
		if($nama=="alat"){
			$namamas="nama_alat";
			$con=" CONCAT(mas.".$namamas.",'/',kon.kondisi, '/', kel.tahun,'/', kp.nama_penyimpanan)";
		}else{
			$namamas=$nama;
			$con=" CONCAT(mas.nama_".$nama.",'/',kon.kondisi, '/', kel.tahun,'/', kp.nama_penyimpanan)";
		}
		$this->db->select("kel.*,".$con." as nama_".$nama."",false);
		$this->db->from('kelola_'.$nama.' kel');
		$this->db->join('master_'.$namamas.' mas', 'kel.id_nama_'.$nama.' = mas.id', 'left');
		$this->db->join('kelola_penyimpanan kp', 'kel.lokasi = kp.id', 'left');
		$this->db->join('kondisi_barang kon', 'kon.id = kel.kondisi', 'left');
		$ret= $this->db->get();
		
		
		return $ret; 
		
	}
	public function get_detail_pinjaman($data='bahan',$id)
	{
		$this->db->select('*');
		$this->db->from('data_peminjaman_'.$data);
		$this->db->where('id', $id);
		return $this->db->get()->row();
	}
}

