<?php $this->load->view('head'); ?>
<script type="text/javascript">
$(document).ready(function() {
	$('#form1').validateMyForm();
	$('.bclass').toggle(function(){
			$k=$(this).attr('key');
			$('.'+$k).hide();
		},
		function(){
			$k=$(this).attr('key');
			$('.'+$k).show();
			});
	tableHover('t');
});
</script>
</head>
<body>
<?php echo $form; ?>
<table class="xTable">
  <tr>
    <th colspan="2" class="left">新增一级分类</th>
  </tr>
  <tr>
    <td width="10%" class="right">名称：</td>
    <td><input name="name" type="text" id="name" class="required" /></td>
  </tr>
  <tr>
    <td colspan="2" class="center"><input type="submit" name="Submit" value="提交" class="submit" /></td>
  </tr>
</table>
</form>
<table class="xTable" id="t">
  <tr>
    <th width="15%">&nbsp;</th>
    <th width="34%">名称</th>
    <th width="15%">排序</th>
    <th width="10%">&nbsp;</th>
    <th width="10%">操作</th>
    <th width="8%">&nbsp;</th>
    <th width="8%">&nbsp;</th>
  </tr>
  <?php foreach ($results as $k=>$v){ ?>
  <tr class="b">
    <td>&nbsp;</td>
    <td><span class="bclass" key="<?php echo $k; ?>"></span><?php echo $v['name']; ?></td>
    <td>&nbsp;<span title="点击可编辑" onmouseover="over(this,'edit');" onmouseout="out(this,'edit')" onclick="editable(this,<?php echo $v['id']; ?>,'<?php echo base_url(index_page().'/product/updateBSort'); ?>',30)"><?php echo $v['paixun']; ?></span></td>
    <td>&nbsp;</td>
    <td><a href="<?php echo site_url('product/sclass/'.$v['id']);?>">新增下级</a></td>
    <td><a href="<?php echo site_url('product/bclassEdit/'.$v['id']); ?>">编辑</a></td>
    <td><?php if ($v['flag']==2) {?>
      <a href="javascript:void(0);" onClick="delAlert('<?php echo site_url('product/bclassDel/'.$v['id']);?>');" class="fontcolorB">删除</a>
      <?php }?>
      &nbsp;</td>
  </tr>
  <?php
  if ($v['sclass']) {
  	foreach ($v['sclass'] as $i=>$j){
  		?>
  <tr class="<?php echo $k; ?>">
    <td>&nbsp;</td>
    <td>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $j['name']; ?></td>
    <td>&nbsp;<span title="点击可编辑" onmouseover="over(this,'edit');" onmouseout="out(this,'edit')" onclick="editable(this,<?php echo $j['id']; ?>,'<?php echo base_url(index_page().'/product/updateSSort'); ?>',30)"><?php echo $j['paixun']; ?></span></td>
    <td>&nbsp;</td>
    <td><a href="<?php echo site_url('product/moveTo/'.$j['id']); ?>">移动到</a></td>
    <td><a href="<?php echo site_url('product/sclassEdit/'.$j['id']); ?>">编辑</a></td>
    <td><?php if ($j['flag']==2) {?>
      <a href="javascript:void(0);" onClick="delAlert('<?php echo site_url('product/sclassDel/'.$j['id']);?>');" class="fontcolorB">删除</a>
      <?php }?>
      &nbsp;</td>
  </tr>
  <?php		
  	}
  }
  }
  ?>
</table>
<?php $this->load->view('foot'); ?>
