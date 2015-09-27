<?php $this->load->view('head'); ?>
<script type="text/javascript">
$(document).ready(function() {
	tableHover('t',0,-2);
});
</script>
</head>
<body>
<?php echo $form; ?>
<table class="xTable">
  <tr>
    <th colspan="2">产品图片管理</th>
  </tr>
  <tr>
    <td width="10%" class="right">产品图片：</td>
    <td class="left"><input type="file" class="file" name="userfile" /></td>
  </tr>
  <tr>
    <td colspan="2" class="center">&nbsp;
      <input type="hidden" name="id" value="<?php echo $id; ?>" />
      <input type="submit" name="Submit" value="提交" class="submit" /></td>
  </tr>
</table>
</form>
<table id="t">
  <tr>
    <th width="20%">产品名称</th>
    <th width="20%">产品缩略图</th>
    <th width="20%">设为封面</th>
    <th width="20%">排序</th>
    <th width="20%">操作</th>
  </tr>
  <?php foreach ($imgs as $k=>$v){?>
  <tr>
    <td><?php echo $v['pname']; ?></td>
    <td>&nbsp;&nbsp;<a href="<?php echo base_url('../'.$this->config->item('upload').'/'.$v['img']); ?>" target="_blank"><img src="<?php echo base_url('../'.$this->config->item('upload').'/small_'.$v['img']); ?>" /></a></td>
    <td><?php if($v['surface']==1){ echo '<span class="fontcolorB">是</span>' ;?>
      <?php }else{ ?>
      <a href="<?php echo site_url('product/setSurface/'.$v['pid'].'/'.$v['id']); ?>">否</a>
      <?php } ?></td>
    <td><?php echo $v['paixun']; ?></td>
    <td>&nbsp;&nbsp;<a href="javascript:void(0)" onclick="delAlert('<?php echo site_url('product/imgDel/'.$v['id'].'/'.$v['pid']);?>')">删除</a></td>
  </tr>
  <?php }?>
  <tr>
    <td colspan="5" class="center ui-page">&nbsp;<?php echo $this->pagination->create_links(); ?></td>
  </tr>
</table>
<?php $this->load->view('foot'); ?>
