<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class MY_Controller extends CI_Controller {
	public $data;
	protected $meta;
	protected $css;
	protected $js; 
	public function __construct(){
		parent::__construct();
		$this->load->model('common_model','common');
		$this->load->model('system_model','system');
		$this->lang->load('default');
		$this->system->isLogin();
		$this->css=array('base.css','global.css');//加载默认样式文件
		$this->js=array('jquery/jquery-1.11.3.min.js');//加载默认js文件
		$this->data=$this->common->setConfig($this->common->configs,$this->css,$this->js);
	}
}