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
    <th height="30" colspan="2" class="left">新增二级分类</th>
  </tr>
  <tr>
    <td width="10%" class="right">名称：</td>
    <td align="left"><input name="name" type="text" id="name" class="required" /></td>
  </tr>
  <tr>
    <td colspan="2" class="center"><input type="hidden" name="bid" value="<?php echo $bid; ?>" />
      <input type="submit" name="Submit" value="提交" class="submit" /></td>
  </tr>
</table>
</form>
<?php $this->load->view('foot'); ?>
