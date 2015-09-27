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
	public function bClass(){
		$r=$this->db->order_by('paixun','asc')->order_by('id','desc')->get('product_bclass');
		return $r->result_array();
	}
	/**
	 * 指定一级分类下的所有二级分类
	 *
	 * @param unknown_type $bid
	 * @return unknown
	 */
	public function sClass($bid){
		$r=$this->db->where(array('bid'=>$bid))->order_by('paixun','asc')->order_by('id','desc')->get('product_sclass');
		return $r->result_array();
	}
	/**
	 * 所有一级分类与二级分类
	 *
	 * @return unknown
	 */
	public function classic(){
		$bclass=$this->bClass();
		foreach ($bclass as $k=>$v){
			$bclass[$k]['sclass']=$this->sClass($v['id']);
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
	 * 根据产品一级分类id检索一级分类的名称,失败则返回false
	 *
	 * @param unknown_type $bid
	 * @return unknown
	 */
	public function getBnameByBid($bid){
		$query=$this->db->get_where('product_bclass',array('id'=>$bid));
		if ($query->num_rows()==0) {
			return false;
		}
		$query=$query->row();
		return $query->name;
	}
	/**
	 * 根据产品二级分类id检索二级分类的名称，失败则返回false
	 *
	 * @param unknown_type $sid
	 * @return unknown
	 */
	public function getSnameBySid($sid){
		$query=$this->db->get_where('product_sclass',array('id'=>$sid));
		if ($query->num_rows()==0) {
			return false;
		}
		$query=$query->row();
		return $query->name;
	}
	/**
	 * 根据产品二级分类id检索其一级分类的名称，失败则返回false
	 *
	 * @param unknown_type $sid
	 * @return unknown
	 */
	public function getBnameBySid($sid){
		$bid=$this->getBidBySid($sid);
		if ($bid!==false) {
			$bname=$this->getBnameByBid($bid);
			if ($bname!==false) {
				return $bname;
			}
		}
		return false;
	}
	/**
	 * 检索出某款产品的信息
	 *
	 * @param unknown_type $id
	 * @return unknown
	 */
	public function getProductById($id){
		$news=$this->db->get_where('product',array('id'=>$id));
		if ($news->num_rows()==0) {
			return false;
		}
		return $news->row_array();
	}
	/**
	 * 根据产品id检索出产品所有的图片
	 *
	 * @param unknown_type $pid
	 * @return unknown
	 */
	public function getProductImg($pid){
		$this->db->where('pid',$pid);
		$this->db->order_by('paixun','asc');
		$query=$this->db->get('product_img');
		if ($query->num_rows()==0) {
			return false;
		}
		$i=1;
		foreach ($query->result() as $v){
			if ($v['surface']==1) {
				$productimg[0]=$v['img'];
			}
			else {
				$productimg[$i++]=$v['img'];
			}
		}
		return $productimg;
	}
}