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
    <th height="30" colspan="2" class="left"><?php echo $lang['news_class_sub_page_title']; ?></th>
  </tr>
  <tr>
    <td width="10%" class="right"><?php echo $lang['name']; ?>：</td>
    <td align="left"><input name="name" type="text" id="name" class="required" /></td>
  </tr>
  <tr>
    <td colspan="2" class="center"><input type="hidden" name="bid" value="<?php echo $bid; ?>" />
      <input type="submit" name="Submit" value="<?php echo $lang['submit']; ?>" class="submit" /></td>
  </tr>
</table>
</form>
<?php $this->load->view('foot'); ?>
