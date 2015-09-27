<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class product extends CI_Controller {
	private $rights=array(
		
	);
	public function __construct(){
		parent::__construct();
		$this->load->database();
		$this->lang->load('default');
		$this->lang->load('product');//加载语言包
		$this->load->model('common_model','common');
		$this->load->model('system_model','system');
		$this->system->isLogin();
		$method=$this->uri->rsegment(2);//获取控制器中的方法
		if (array_key_exists($method,$this->rights)) {//进行权限控制
			$this->system->verify($this->rights[$method]);
		}
	}
	public function bclass(){
		$this->load->helper(array('form'));
		$this->load->model('product_model');
		$data=$this->common->setConfig($this->common->configs,array('global.css'),array($this->common->js,'validateMyForm/jquery.validateMyForm.1.0.js','global.js'));
		$data['form']=form_open('product/bclassSave',array('id'=>'form1','class'=>'xForm'));
		$bclass=$this->product_model->bclass();
		foreach ($bclass as $k=>$v){
			$bclass[$k]['sclass']=$this->product_model->Sclass($v['id']);
		}
		$data['results']=$bclass;
		$this->load->view('product/class',$data);
	}
	public function bclassSave(){//保存新增的一级分类
		$name=$this->input->post('name');
		$name=$name?$name:message($this->lang->line('product_name'),'product/bclass');
		$this->db->insert('product_bclass',array('name'=>$name));
		message($this->lang->line('success'),'product/bclass');
	}
	public function bclassDel(){//删除一级分类
		$id=$this->uri->segment(3);
		$id=$id===false?message($this->lang->line('product_para')):$id;
		$r=$this->db->get_where('product_sclass',array('bid'=>$id));
		if ($r->num_rows()>0) {
			message($this->lang->line('product_subclass'),'product/bclass');
		}
		$this->db->delete('product_bclass',array('id'=>$id));
		message($this->lang->line('success'),'product/bclass');
	}
	public function bclassEdit(){//编辑一级分类
		$id=$this->uri->segment(3);
		$id=$id===false?message($this->lang->line('product_para')):$id;
		$this->load->helper(array('form'));
		$this->load->model('product_model');
		$data=$this->common->setConfig($this->common->configs,array('global.css'),array($this->common->js,'validateMyForm/jquery.validateMyForm.1.0.js'));
		$data['form']=form_open('product/bclassEditSave',array('id'=>'form1','class'=>'xForm'));
		$data['class']=$this->product_model->getClass($id);
		$this->load->view('product/bclass_edit',$data);
	}
	public function bclassEditSave(){
		$name=$this->input->post('name');
		$paixun=$this->input->post('paixun');
		$id=$this->input->post('id');
		if (!$name||!$paixun||!$id) {
			message($this->lang->line('product_input'),'product/bclassEdit/'.$id);
		}
		$data=array('name'=>$name,'paixun'=>$paixun);
		$this->db->update('product_bclass',$data,array('id'=>$id));
		message($this->lang->line('success'),'product/bclass');
	}
	public function sclass(){
		$id=$this->uri->segment(3);
		$id=$id===false?message($this->lang->line('product_para')):$id;
		$this->load->helper(array('form'));
		$data=$this->common->setConfig($this->common->configs,array('global.css'),array($this->common->js,'validateMyForm/jquery.validateMyForm.1.0.js'));
		$data['form']=form_open('product/sclassSave',array('id'=>'form1','class'=>'xForm'));
		$data['bid']=$id;
		$this->load->view('product/sclass',$data);
	}
	public function sclassSave(){//保存新增的二级分类
		$name=$this->input->post('name');
		$bid=$this->input->post('bid');
		if (!$name||!$bid) {
			message($this->lang->line('product_name'),'product/bclass');
		}
		$this->db->insert('product_sclass',array('name'=>$name,'bid'=>$bid));
		message($this->lang->line('success'),'product/bclass');
	}
	public function sclassDel(){//删除二级分类
		$id=$this->uri->segment(3);
		$id=$id===false?message($this->lang->line('product_para')):$id;
		$this->db->delete('product_sclass',array('id'=>$id));
		message($this->lang->line('success'),'product/bclass');
	}
	public function sclassEdit(){//编辑二级分类
		$id=$this->uri->segment(3);
		$id=$id===false?message($this->lang->line('product_para')):$id;
		$this->load->helper(array('form'));
		$this->load->model('product_model');
		$data=$this->common->setConfig($this->common->configs,array('global.css'),array($this->common->js,'validateMyForm/jquery.validateMyForm.1.0.js'));
		$data['form']=form_open('product/sclassEditSave',array('id'=>'form1','class'=>'xForm'));
		$data['class']=$this->product_model->getClass($id,'small');
		$this->load->view('product/sclass_edit',$data);
	}
	public function sclassEditSave(){
		$name=$this->input->post('name');
		$paixun=$this->input->post('paixun');
		$id=$this->input->post('id');
		if (!$name||!$paixun||!$id) {
			message($this->lang->line('product_input'),'product/sclassEdit/'.$id);
		}
		$data=array('name'=>$name,'paixun'=>$paixun);
		$this->db->update('product_sclass',$data,array('id'=>$id));
		message($this->lang->line('success'),'product/bclass');
	}
	public function moveTo(){
		$id=$this->uri->segment(3);
		$id=$id===false?message($this->lang->line('product_para')):$id;
		$this->load->helper(array('form'));
		$this->load->model('product_model');
		$data=$this->common->setConfig($this->common->configs,array('global.css'));
		$data['form']=form_open('product/moveToSave',array('id'=>'form1','class'=>'xForm'));
		$data['bid']=$this->product_model->getBidBySid($id);
		$data['sid']=$id;
		$data['classic']=$this->product_model->classic();
		$this->load->view('product/class_moveto',$data);
	}
	public function moveToSave(){
		$bid=$this->input->post('bid');
		$sid=$this->input->post('sid');
		if (!$bid||!$sid) {
			message($this->lang->line('product_para'),'product/moveTo/'.$sid);
		}
		$data=array('bid'=>$bid);
		$this->db->update('product_sclass',$data,array('id'=>$sid));
		message($this->lang->line('success'),'product/bclass');
	}
	public function add(){//新增产品
		$this->load->helper(array('form'));
		$this->load->model('product_model');
		$data=$this->common->setConfig($this->common->configs,array('global.css'),array($this->common->js,'validateMyForm/jquery.validateMyForm.1.0.js'));
		$data['form']=form_open_multipart('product/save',array('id'=>'form1','class'=>'xForm'));
		$data['classic']=$this->product_model->classic();
		$data['date']=date('Y-m-d',time());
		$this->load->view('product/add',$data);
	}
	public function save(){
		$sid=trim($_POST['sid']);
		$sid=$sid?$sid:message($this->lang->line('product_input_classic'),'product/add');
		$name=trim($_POST['name']);
		$name=$name?$name:message($this->lang->line('product_input_title'),'product/add');
		$content=trim($_POST['FCKeditor1']);
		$flag=trim($_POST['flag']);
		$content=trim($_POST['FCKeditor1']);
		$title=trim($_POST['title']);
		$keywords=trim($_POST['keywords']);
		$description=trim($_POST['description']);
		$this->load->model('product_model');
		$bid=$this->product_model->getBidBySid($sid);
		$data['bid']=$bid;
		$data=array('sid'=>$sid,'pname'=>$name,'intro'=>$content,'created'=>time(),'bid'=>$bid,'flag'=>$flag,'title'=>$title,'keyword'=>$keywords,'description'=>$description);
		$this->db->insert('product',$data);
		if ($this->db->affected_rows()>0) {
			$imgname=$this->product_model->imgUpload();
			if ($imgname) {
				$this->db->insert('product_img',array('pid'=>$this->db->insert_id(),'img'=>$imgname,'surface'=>1));
			}
		}
		message($this->lang->line('success'),'product/add');
	}
	public function manage(){
		$this->load->helper(array('form'));
		$this->load->model('product_model');
		$data=$this->common->setConfig($this->common->configs,array('global.css'),array($this->common->js,'global.js'));
		$data['formsearch']=form_open('product/manage',array('id'=>'form1','class'=>'xForm'));
		$data['forminfo']=form_open('product/op',array('class'=>'xForm'));
		$data['classic']=$this->product_model->classic();
		$default=array('page','classic','keyword');
		$urldata=$this->uri->uri_to_assoc(3,$default);
		$key=trim($this->input->post('keyword'));
		if (!$key) {
			if (array_key_exists('keyword',$urldata)) {
				$key=urldecode($urldata['keyword']);
			}
			else {
				$key=null;
			}
		}
		$classic=trim($this->input->post('classic'));
		if (!$classic) {
			if (array_key_exists('classic',$urldata)) {
				$classic=urldecode($urldata['classic']);
			}
			else {
				$classic=null;
			}
		}
		$url='/product/manage';
		$this->db->select('a.*,b.name');
		$this->db->from('product as a');
		$this->db->join('product_sclass as b','a.sid=b.id');
		if ($key) {
			$this->db->like('a.pname',$key);
			$url.='/keyword/'.$key;
		}
		if ($classic) {
			$this->db->where('a.sid',$classic);
			$url.='/classic/'.$classic;
		}
		$this->db->order_by('a.id','desc');
		$db=clone $this->db;
		$p=$this->db->get();
		$total=$p->num_rows();
		$this->load->library('pagination');
		$url=base_url(index_page().$url.'/page/');
		$currpage=array_search('page',$this->uri->segment_array())+1;
		$config=$this->common->pageConfig($url,$total,14,$currpage);
		$this->pagination->initialize($config);
		$this->db=$db;
		$this->db->limit($config['per_page'],$this->uri->segment($config['uri_segment'],0));
		$product=$this->db->get();
		$data['products']=$product->result_array();
		$data['keyword']=$key?$key:'';
		$data['sid']=$classic?$classic:'';
		$this->load->view('product/manage',$data);
	}
	public function edit(){
		$id=$this->uri->segment(3,0);
		$id=$id?$id:message($this->lang->line('product_para'),'product/manage');
		$this->load->helper(array('form'));
		$this->load->model('product_model');
		$data=$this->common->setConfig($this->common->configs,array('global.css'),array($this->common->js,'validateMyForm/jquery.validateMyForm.1.0.js'));
		$product=$this->product_model->getProduct($id);
		$data['form']=form_open('product/editSave',array('id'=>'form1','class'=>'xForm'));
		$data['classic']=$this->product_model->classic();
		$data['date']=date('Y-m-d',$product['created']);
		require(APPPATH.'third_party/fckeditor/fckeditor.php');
		$FCKeditor = new FCKeditor('FCKeditor1') ;//实例化
		$FCKeditor->BasePath = base_url().APPPATH.'third_party/fckeditor/';//这个路径一定要和上面那个引入路径一致，否则会报错:找不到fckeditor.html页面
		$FCKeditor->Value = $product['intro'];
		$FCkeditor->ToolbarSet='Default';     //工具按钮设置
		$FCKeditor->Height = '450' ;
		$product['content']=$FCKeditor->CreateHtml() ;
		$data['product']=$product;
		$this->load->view('product/edit',$data);
	}
	public function editSave(){
		$id=$this->input->post('id');
		$id=$id?$id:message($this->lang->line('product_para'),'product/manage');
		$sid=trim($_POST['sid']);
		$sid=$sid?$sid:message($this->lang->line('product_input_classic'),'product/add');
		$name=trim($_POST['name']);
		$name=$name?$name:message($this->lang->line('product_input_title'),'product/add');
		$content=trim($_POST['FCKeditor1']);
		$flag=trim($_POST['flag']);
		$content=trim($_POST['FCKeditor1']);
		$title=trim($_POST['title']);
		$keywords=trim($_POST['keywords']);
		$description=trim($_POST['description']);
		$this->load->model('product_model');
		$bid=$this->product_model->getBidBySid($sid);
		$data['bid']=$bid;
		$data=array('sid'=>$sid,'pname'=>$name,'intro'=>$content,'bid'=>$bid,'flag'=>$flag,'title'=>$title,'keyword'=>$keywords,'description'=>$description);
		$this->db->update('product',$data,array('id'=>$id));
		if ($this->db->affected_rows()>0) {
			message($this->lang->line('success'),'product/manage');
		}
		else {
			message($this->lang->line('failure'),'product/manage');
		}
	}
	public function del(){
		$id=$this->uri->segment(3,0);
		$id=$id?$id:message($this->lang->line('product_para'),'product/manage');
		$this->db->delete('product',array('id'=>$id));
		message($this->lang->line('success'),'product/manage');
	}
	/**
	 * 设置产品的显示状态
	 *
	 */
	public function setStatus(){
		$id=$this->uri->segment(4,0);
		$id=$id?$id:message($this->lang->line('product_para'),'product/manage');
		$flag=$this->uri->segment(6,0);
		$flag=$flag?$flag:message($this->lang->line('product_para'),'product/manage');
		$url='product/setStatus/id/'.$id;
		if ($flag==1) {
			$url.='/flag/2';
		}
		else {
			$url.='/flag/1';
		}
		$this->db->where('id',$id);
		$this->db->update('product',array('flag'=>$flag));//设置是否显示
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
	//更新产品名称
	public function updateTitle(){
		$id=$this->uri->segment(4,0);
		$id=$id?$id:message($this->lang->line('product_para','product/manage'));
		$name=trim($this->uri->segment(6,0));
		$name=$name?urldecode($name):message($this->lang->line('product_para','product/manage'));
		$sname=trim($this->uri->segment(8,0));
		$sname=$sname?urldecode($sname):message($this->lang->line('product_para','product/manage'));
		$this->db->where('id',$id);
		$this->db->update('product',array('pname'=>$name));
		if ($this->db->affected_rows()>0) {
			echo $name;
		}
		else {
			echo $sname;
		}
	}
	public function imgManage(){
		$id=trim($this->uri->segment(3,0));
		$id=$id?$id:message($this->lang->line('product_para'),'product/manage');
		$this->load->helper('form');
		$data=$this->common->setConfig($this->common->configs,array('global.css'),array($this->common->js,'global.js'));
		$data['form']=form_open_multipart('product/imgSave');
		$url='product/imgManage/id/'.$id;
		$data['id']=$id;
		$this->db->from('product as a');
		$this->db->join('product_img as b','a.id=b.pid');
		$this->db->where('b.pid',$id);
		$this->db->order_by('b.id','desc');
		$db=clone $this->db;
		$r=$this->db->get();
		$this->load->library('pagination');
		$url=site_url($url.'/page/');
		$config=$this->common->pageConfig($url,$r->num_rows(),20,5);
		$this->pagination->initialize($config);
		$this->db=$db;
		$this->db->limit($config['per_page'],$this->uri->segment($config['uri_segment'],0));
		$imgs=$this->db->get();
		$data['imgs']=$imgs->result_array();
		$this->load->view('product/img_manage',$data);
	}
	public function imgSave(){
		$id=trim($this->input->post('id'));
		$id=$id?$id:message($this->lang->line('error'),'product/manage');
		$this->load->model('product_model');
		$img=$this->product_model->imgUpload();
		if (!$img) {
			message($this->lang->line('product_input_img'),'product/imgManage/'.$id);
		}
		$data=array('pid'=>$id,'img'=>$img);
		if (!$this->product_model->hasSurface($id)) {
			$data['surface']=1;
		}
		$this->db->insert('product_img',$data);
		if ($this->db->affected_rows()>0) {
			message($this->lang->line('success'),'product/imgManage/'.$id);
		}
		else {
			message($this->lang->line('failure'),'product/imgManage/'.$id);
		}
	}
	public function imgDel(){
		$id=$this->uri->segment(3,0);
		$id=$id?$id:message($this->lang->line('error'),'product/manage');
		$pid=$this->uri->segment(4,0);
		$pid=$pid?$pid:message($this->lang->line('error'),'product/manage');
		$this->db->where('id',$id);
		$img=$this->db->get('product_img');
		if ($img->num_rows()>0) {
			$data=$img->result_array();
			$this->db->delete('product_img',array('id'=>$id));
			@unlink(ROOTPATH.$this->config->item('upload').'/'.$data[0]['img']);
			@unlink(ROOTPATH.$this->config->item('upload').'/small_'.$data[0]['img']);
			if ($data[0]['surface']==1) {
				$imgs=$this->db->get_where('product_img',array('pid'=>$pid));
				if ($imgs->num_rows()>0) {
					$imgs=$imgs->result_array();
					$this->db->where('id',$imgs[0]['id']);
					$this->db->update('product_img',array('surface'=>1),array('id'=>$imgs[0]['id']));
				}
			}
			message($this->lang->line('success'),'product/imgManage/'.$pid);
		}
		else {
			message($this->lang->line('error'),'product/imgManage/'.$pid);
		}
	}
	public function op(){
		$submit1=$this->input->post('submit1');
		$submit2=$this->input->post('submit2');
		$ids=array();
		foreach ($this->input->post() as $k=>$v){
			if (is_numeric($k)) {
				$ids[]=$v;
			}
		}
		if (!count($ids)) {
			message($this->lang->line('product_para'),'product/manage');
		}
		if ($submit1=='删除所选') {
			$this->db->where('id in('.implode(',',$ids).')');
			$this->db->delete('product');
			message($this->lang->line('success'),'product/manage');
		}
		if ($submit2=='移动所选') {
			redirect(site_url('product/movetoproduct/ids/'.implode('-',$ids)));
		}
	}
	public function movetoproduct(){
		$ids=trim($this->uri->segment(4,0));
		$ids=$ids?$ids:message($this->lang->line('product_para'),'product/manage');
		$this->load->helper('form');
		$data=$this->common->setConfig($this->common->configs,array('global.css'),array($this->common->js,'validateMyForm/jquery.validateMyForm.1.0.js'));
		$data['form']=form_open('product/movetoproductSave',array('id'=>'form1','class'=>'xForm'));
		$this->load->model('product_model');
		$data['classic']=$this->product_model->classic();
		$data['ids']=$ids;
		$this->load->view('product/product_moveto',$data);
	}
	public function movetoproductSave(){
		$sid=trim($this->input->post('classic'));
		$ids=$this->input->post('ids');
		$ids=$ids?$ids:message($this->lang->line('product_para'),'product/manage');
		$ids=str_replace('-',',',$ids);
		$this->load->model('product_model');
		$bid=$this->product_model->getBidBySid($sid);
		$this->db->where('id in('.$ids.')');
		$this->db->update('product',array('sid'=>$sid,'bid'=>$bid));
		message($this->lang->line('success'),'product/manage');
	}
	public function setSurface(){
		$pid=trim($this->uri->segment(3,0));
		$pid=$pid?$pid:message($this->lang->line('error'),'product/manage');
		$id=trim($this->uri->segment(4,0));
		$id=$id?$id:message($this->lang->line('error'),'product/imgManage/'.$pid);
		$this->db->where('pid',$pid);
		$this->db->update('product_img',array('surface'=>2));
		$data=array('surface'=>1);
		$this->db->where('id',$id);
		$this->db->update('product_img',$data);
		if ($this->db->affected_rows()>0) {
			message($this->lang->line('success'),'product/imgManage/'.$pid);
		}
		else {
			message($this->lang->line('failure'),'product/imgManage/'.$pid);
		}
	}
	//更新产品的一级分类的排序
	public function updateBSort(){
		$id=$this->uri->segment(4,0);
		$id=isset($id)?$id:message($this->lang->line('product_para','product/manage'));
		$name=trim($this->uri->segment(6,0));
		$name=isset($name)?urldecode($name):message($this->lang->line('product_para','product/manage'));
		$sname=trim($this->uri->segment(8,0));
		$sname=isset($sname)?urldecode($sname):message($this->lang->line('product_para','product/manage'));
		$this->db->where('id',$id);
		$this->db->update('product_bclass',array('paixun'=>$name));
		if ($this->db->affected_rows()>0) {
			echo $name;
		}
		else {
			echo $sname;
		}
	}
	//更新产品的二级分类的排序
	public function updateSSort(){
		$id=$this->uri->segment(4,0);
		$id=isset($id)?$id:message($this->lang->line('product_para','product/manage'));
		$name=trim($this->uri->segment(6,0));
		$name=isset($name)?urldecode($name):message($this->lang->line('product_para','product/manage'));
		$sname=trim($this->uri->segment(8,0));
		$sname=isset($sname)?urldecode($sname):message($this->lang->line('product_para','product/manage'));
		$this->db->where('id',$id);
		$this->db->update('product_sclass',array('paixun'=>$name));
		if ($this->db->affected_rows()>0) {
			echo $name;
		}
		else {
			echo $sname;
		}
	}
}