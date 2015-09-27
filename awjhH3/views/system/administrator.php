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
    <th colspan="2"><?php echo $lang['sys_administrator']; ?></th>
  </tr>
  <tr>
    <td width="10%" class="right"><?php echo $lang['sys_old_user']; ?>：</td>
    <td><input name="old_user" type="text" id="old_user" class="required" autocomplete="off" /></td>
  </tr>
  <tr>
    <td class="right"><?php echo $lang['sys_old_psw']; ?>：</td>
    <td><input name="old_psw" type="password" id="old_psw" class="required" /></td>
  </tr>
  <tr>
    <td class="right"><?php echo $lang['sys_new_user']; ?>：</td>
    <td><input name="new_user" type="text" id="new_user" />
      <span class="fontcolorA"><?php echo $lang['sys_new_user_remark']; ?></span></td>
  </tr>
  <tr>
    <td class="right" ><?php echo $lang['sys_new_psw']; ?>：</td>
    <td><input name="new_psw" type="password" id="new_psw" class="required" /></td>
  </tr>
  <tr>
    <td class="right"><?php echo $lang['sys_confir_psw']; ?>：</td>
    <td><input name="new_psw2" type="password" id="new_psw2" class="required" /></td>
  </tr>
  <tr>
    <td colspan="2" class="center"><input name="Submit" type="submit" class="submit" value="<?php echo $lang['submit']; ?>" /></td>
  </tr>
</table>
</form>
<?php $this->load->view('foot'); ?>