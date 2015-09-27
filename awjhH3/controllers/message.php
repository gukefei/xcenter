<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Message extends CI_Controller {
	private $rights=array(
		
	);
	public function __construct(){
		parent::__construct();
		$this->load->database();
		$this->lang->load('default');
		$this->lang->load('message');//加载语言包
		$this->load->model('common_model','common');
		$this->load->model('system_model','system');
		$this->system->isLogin();
		$method=$this->uri->rsegment(2);//获取控制器中的方法
		if (array_key_exists($method,$this->rights)) {//进行权限控制
			$this->system->verify($this->rights[$method]);
		}
	}
	public function manage(){//留言列表
		$data=$this->common->setConfig($this->common->configs,array('global.css'),array($this->common->js,'global.js'));
		$total=$this->db->count_all('message');
		$url=base_url(index_page().'/message/manage/page/');
		$uri_segment=4;
		$config=$this->common->pageConfig($url,$total,15,$uri_segment);
		$this->load->library('pagination',$config);
		$this->db->order_by('id','desc');
		$this->db->limit($config['per_page'],$this->uri->segment($uri_segment,0));
		$links=$this->db->get('message');
		$data['links']=$links->result_array();
		$this->load->view('head',$data);
		$this->load->view('message_manage');
		$this->load->view('foot');
	}
	public function setStatus(){
		$id=$this->uri->segment(4,0);
		$id=$id?$id:message($this->lang->line('error'),'message/manage');
		$flag=$this->uri->segment(6,0);
		$flag=$flag?$flag:message($this->lang->line('error'),'message/manage');
		$url='message/setStatus/id/'.$id;
		if ($flag==1) {
			$url.='/flag/2';
		}
		else {
			$url.='/flag/1';
		}
		$this->db->where('id',$id);
		$this->db->update('message',array('flag'=>$flag));//设置是否显示
		$url=site_url($url);
		if ($this->db->affected_rows()) {
			if ($flag==1) {
				echo '<img src="'.base_url().'images/yes.gif" onclick=setType(this,"'.$url.'") title="可编辑" />';
			}
			else {
				echo '<img src="'.base_url().'images/no_gray.gif" onclick=setType(this,"'.$url.'") title="可编辑" />';
			}
		}
	}
	public function feedback(){
		$urldata=$this->uri->uri_to_assoc(3);
		$id=$urldata['id'];
		$id=$id?$id:message($this->lang->line('error'),'message/manage');
		$data=$this->common->setConfig($this->common->configs,array('global.css'),array($this->common->js,'validateMyForm/jquery.validateMyForm.1.0.js'));
		$this->load->helper(array('form'));
		$data['form']=form_open_multipart('message/save',array('id'=>'form1'));
		$data['id']=$id;
		$this->load->view('head',$data);
		$this->load->view('message_feedback');
		$this->load->view('foot');
	}
	public function save(){
		$content=$this->input->post('content');
		$content=$content?$content:message($this->lang->line('content'),'message/manage');
		$id=$this->input->post('id');
		$id=$id?$id:message($this->lang->line('content'),'message/manage');
		$data=array('fb_content'=>$content,'fb_time'=>time());
		$this->db->update('message',$data,array('id'=>$id));
		message($this->lang->line('success'),'message/manage');
	}
	public function del(){
		$urldata=$this->uri->uri_to_assoc(3);
		$id=$urldata['id'];
		$id=$id?$id:message($this->lang->line('error'),'message/manage');
		$this->db->where('id',$id);
		$link=$this->db->get('message');
		$link=$link->row_array();
		if (!count($link)) {
			message($this->lang->line('exists'),'message/manage');
		}
		$this->db->delete('message',array('id'=>$id));
		message($this->lang->line('success'),'message/manage');
	}
}