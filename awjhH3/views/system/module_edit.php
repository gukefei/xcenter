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
    <th colspan="2">编辑权限组</th>
  </tr>
  <tr>
    <td width="10%" class="right">名称：</td>
    <td><input name="name" type="text" id="name" class="required" value="<?php echo $m->name; ?>" /></td>
  </tr>
  <tr>
    <td colspan="2" class="center"><input type="hidden" name="id" value="<?php echo $m->id; ?>" /><input name="Submit" type="submit" class="submit" value="提交" /></td>
  </tr>
</table>
</form>
<?php $this->load->view('foot'); ?>