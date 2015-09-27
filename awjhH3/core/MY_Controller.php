<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class MY_Controller extends CI_Controller {
	public function __construct(){
		parent::__construct();
		$this->load->model('common_model','common');
		$this->load->model('system_model','system');
		$this->system->isLogin();
	}
}