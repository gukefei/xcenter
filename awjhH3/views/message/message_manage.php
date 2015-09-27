<script type="text/javascript">
$(document).ready(function() {
	tableHover('t',0,-2);
});
</script>
</head>
<body>
<table class="xTable" id="t">
    <tr>
      <th width="12%">留言者</th>
      <th width="15%">标题</th>
      <th width="20%">内容</th>
      <th width="20%">回复内容</th>
      <th width="12%">留言时间</th>
      <th width="6%">状态</th>
      <th width="15%">操作</th>
    </tr>
	<?php foreach($links as $k=>$v){ ?>
    <tr>
      <td><?php echo $v['name']; ?></td>
      <td><?php echo $v['title']; ?></td>
      <td><?php echo $v['content']; ?></td>
      <td><?php echo $v['fb_content']; ?></td>
      <td><?php echo date('Y-m-d',$v['created']); ?></td>
      <td><span><?php if ($v['flag']==1){ ?><img src="<?php echo base_url();?>images/yes.gif" onclick="setType(this,'<?php echo base_url(index_page().'/message/setStatus/id/'.$v['id'].'/flag/2');?>')" title="可编辑" /><?php }else{ ?><img src="<?php echo base_url();?>images/no_gray.gif" onclick="setType(this,'<?php echo base_url(index_page().'/message/setStatus/id/'.$v['id'].'/flag/1');?>')" title="可编辑" /><?php } ?></span></td>
      <td><a href="<?php echo site_url('message/feedback/id/'.$v['id']);?>">回复</a>&nbsp;&nbsp;<a href="javascript:void(0)" onclick="delAlert('<?php echo site_url('message/del/id/'.$v['id']);?>')">删除</a></td>
    </tr>
	<?php } ?>
    <tr>
      <td colspan="7" class="center ui-page"><?php echo $this->pagination->create_links(); ?></td>
    </tr>
</table>