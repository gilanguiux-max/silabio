<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class sop extends CI_Controller {
	
	public function __construct()
	{
		parent::__construct();
		$this->fungsi->restrict();
	}
	
	public function index()
	{
		$this->fungsi->check_previleges('sop');
		$this->load->view('other/v_sop');
	}
}