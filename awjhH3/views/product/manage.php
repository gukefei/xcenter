<?php $this->load->view('head'); ?>
<script type="text/javascript">
$(document).ready(function() {
	tableHover('t',0,-3);
	$('#checkall').bind('click',function(){
		if($(this).attr('checked')){
			$('.check').parent().parent().addClass('checkedbg');
			$('.check').attr('checked','checked');
		}
		else{
			$('.check').parent().parent().removeClass();
			$('.check').removeAttr('checked');
		}
	});
	$('.check').bind('click',function(){
		if($(this).attr('checked')){
			$(this).parent().parent().addClass('checkedbg');
		}
		else{
			$(this).parent().parent().removeClass();
		}

	});
	flag=false;
	$('form:last').submit(function(){
		msg='操作后无法恢复，请慎重';
		if(!flag){
			if(confirm(msg)){
				flag=true;
				$(this).submit();
			}
			else{
				return false;
			}
		}
		else{
			$(this).submit();
		}
	});

});
</script>
</head>
<body>
<?php echo $formsearch; ?>
<table class="xTable">
  <tr>
    <th colspan="2" class="left">产品检索</th>
  </tr>
  <tr>
    <td width="10%" class="right">关键字：</td>
    <td width="90%" class="left"><input name="keyword" type="text" id="keyword" value="<?php echo $keyword; ?>" x-webkit-speech class="ex300" /></td>
  </tr>
  <tr>
    <td class="right">所属分类：</td>
    <td class="left"><select name="classic" id="classic">
        <option value="">请选择</option>
        <?php foreach ($classic as $k=>$v){ ?>
        <optgroup label="<?php echo $v['name']; ?>">
        <?php foreach($v['sclass'] as $i=>$j){ ?>
        <option value="<?php echo $j['id']; ?>" <?php if($j['id']==$sid){echo 'selected';}?>><?php echo $j['name']; ?></option>
        <?php } ?>
        </optgroup>
        <?php } ?>
      </select></td>
  </tr>
  <tr>
    <td colspan="2" class="center"><input type="submit" name="Submit" value="搜索" class="submit" /></td>
  </tr>
</table>
</form>
<?php echo $forminfo; ?>
<table class="xTable" id="t">
  <tr class="b">
    <th width="4%" class="center">选中</th>
    <th width="8%" class="center">更新时间</th>
    <th width="40%" class="center">产品名称</th>
    <th width="12%" class="center">分类名称</th>
    <th width="5%" class="center">状态</th>
    <th width="18%" class="center">操作</th>
  </tr>
  <?php foreach($products as $k=>$v) {?>
  <tr>
    <td class="center"><input name="<?php echo $v['id']; ?>" type="checkbox" class="radio check" value="<?php echo $v['id']; ?>" /></td>
    <td class="center"><?php echo date('Y-m-d',$v['created']);?></td>
    <td class="left">&nbsp;<span title="点击可编辑" onmouseover="over(this,'edit');" onmouseout="out(this,'edit')" onclick="editable(this,<?php echo $v['id']; ?>,'<?php echo base_url(index_page().'/product/updateTitle'); ?>',300)"><?php echo $v['pname']; ?></span> &nbsp;</td>
    <td class="center"><?php echo $v['name']; ?></td>
    <td class="center"><span>
      <?php if ($v['flag']==1){ ?>
      <img src="<?php echo base_url();?>images/yes.gif" onclick="setType(this,'<?php echo base_url(index_page().'/product/setStatus/id/'.$v['id'].'/flag/2');?>')" title="可编辑" />
      <?php }else{ ?>
      <img src="<?php echo base_url();?>images/no_gray.gif" onclick="setType(this,'<?php echo base_url(index_page().'/product/setStatus/id/'.$v['id'].'/flag/1');?>')" title="可编辑" />
      <?php } ?>
      </span></td>
    <td class="center"><a href="<?php echo site_url('product/imgManage/'.$v['id']); ?>">产品图片</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="<?php echo site_url('product/edit/'.$v['id']); ?>">编辑</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" onclick="delAlert('<?php echo site_url('product/del/'.$v['id']);?>')" class="fontcolorB">删除</a>&nbsp;&nbsp;</td>
  </tr>
  <?php } ?>
  <tr>
    <td height="35" class="center"><input name="checkall" type="checkbox" class="radio" id="checkall" value="checkbox" /></td>
    <td height="35" colspan="5" class="left"><input name="submit1" type="submit" class="bsubmit" value="删除所选" />
      <input name="submit2" type="submit" class="bsubmit" value="移动所选" /></td>
  </tr>
  <tr class="center">
    <td height="35" colspan="6" class="center ui-page"><?php echo $this->pagination->create_links(); ?></td>
  </tr>
</table>
</form>
<?php $this->load->view('foot'); ?>
