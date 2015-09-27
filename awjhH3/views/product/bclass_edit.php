<?php $this->load->view('head'); ?>
<script type="text/javascript">
$(document).ready(function() {
	$('#form1').validateMyForm();
});
</script>
</head>
<body>
<?php echo $form; ?>
<table class="xTable">
  <tr>
    <th height="30" colspan="2" class="left">编辑一级分类</th>
  </tr>
  <tr>
    <td width="10%" class="right">名称：</td>
    <td align="left"><input name="name" type="text" id="name" class="required" value="<?php echo $class['name']; ?>" /></td>
  </tr>
  <tr>
    <td width="10%" class="right">排序：</td>
    <td align="left"><input name="paixun" type="text" id="paixun" class="required" value="<?php echo $class['paixun']; ?>" /></td>
  </tr>
  <tr>
    <td class="center" colspan="2"><input type="hidden" name="id" value="<?php echo $class['id']; ?>" />
      <input type="submit" name="Submit" value="提交" class="submit" /></td>
  </tr>
</table>
</form>
<?php $this->load->view('foot'); ?>
