<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Product_model extends CI_Model {
	public function __construct(){
		parent::__construct();
		$this->load->database();
	}
	/**
	 * 一级分类
	 *
	 * @return unknown
	 */
	public function Bclass(){
		$r=$this->db->order_by('paixun','asc')->order_by('id','desc')->get('product_bclass');
		return $r->result_array();
	}
	/**
	 * 指定一级分类下的所有二级分类
	 *
	 * @param unknown_type $bid
	 * @return unknown
	 */
	public function Sclass($bid){
		$r=$this->db->where(array('bid'=>$bid))->order_by('paixun','asc')->order_by('id','desc')->get('product_sclass');
		return $r->result_array();
	}
	/**
	 * 所有一级分类与二级分类
	 *
	 * @return unknown
	 */
	public function classic(){
		$bclass=$this->Bclass();
		foreach ($bclass as $k=>$v){
			$bclass[$k]['sclass']=$this->Sclass($v['id']);
		}
		return $bclass;
	}
	/**
	 * 根据标示，id返回相应的分类信息
	 *
	 * @param unknown_type $id
	 * @param unknown_type $flag
	 * @return unknown
	 */
	public function getClass($id,$flag='big'){
		switch ($flag){
			case 'big':
				$table='product_bclass';
				break;
			case 'small':
				$table='product_sclass';
				break;
		}
		$r=$this->db->get_where($table,array('id'=>$id));
		return $r->num_rows()?$r->row_array():false;
	}
	/**
	 * 根据二级分类id检索其一级分类id
	 *
	 * @param unknown_type $sid
	 * @return unknown
	 */
	public function getBidBySid($sid){
		$r=$this->db->get_where('product_sclass',array('id'=>$sid));
		if ($r->num_rows()==0) {
			return false;
		}
		$r=$r->row_array();
		return $r['bid'];
	}
	/**
	 * 检索出某款产品的信息
	 *
	 * @param unknown_type $id
	 * @return unknown
	 */
	public function getProduct($id){
		$news=$this->db->get_where('product',array('id'=>$id));
		if ($news->num_rows()==0) {
			return false;
		}
		return $news->row_array();
	}
	/**
	 * 在批量上传图片时，循环调用本函数来进行图片的上传,并按照相应的参数生成缩略图
	 *
	 */
	public function imgUpload(){
		$config=array('upload_path'=>ROOTPATH.$this->config->item('upload'),'allowed_types'=>'jpg|gif|png','overwrite'=>false,'encrypt_name'=>true,'max_size'=>$this->config->item('upload_size'));
		$this->load->library('upload',$config);
		if ($this->upload->do_upload()) {
			$imgdata=$this->upload->data();
			$config=array('source_image'=>$imgdata['full_path'],'create_thumb'=>true,'width'=>80,'height'=>60,'new_image'=>$imgdata['file_path'].'small_'.$imgdata['file_name'],'thumb_marker'=>'','maintain_ratio'=>true);
			$this->load->library('image_lib',$config);
			if ($this->image_lib->resize()) {
				return $imgdata['file_name'];
			}
		}
		return false;
	}
	/**
	 * 检索某款产品是否设置了封面图片
	 *
	 * @param unknown_type $pid
	 * @return unknown
	 */
	public function hasSurface($pid){
		$this->db->where('pid',$pid);
		$this->db->where('surface',1);
		$p=$this->db->get('product_img');
		if ($p->num_rows()>0) {
			return true;
		}
		return false;
	}
}