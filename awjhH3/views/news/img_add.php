<?php $this->load->view('head'); ?>
</head>
<body>
<?php echo $form; ?>
<table class="xTable">
  <tr>
    <th colspan="2"><?php echo $lang['news_thumb_add']; ?></th>
  </tr>
  <tr>
    <td width="10%" class="right"><?php echo $lang['thumb']; ?>：</td>
    <td><input name="userfile" type="file" class="file" id="userfile" /></td>
  </tr>
  <tr>
    <td colspan="2" class="center"><input type="hidden" name="id" value="<?Php echo $id; ?>" />
      <input type="submit" name="Submit" value="<?php echo $lang['submit']; ?>" class="submit" /></td>
  </tr>
</table>
</form>
<?php $this->load->view('foot'); ?>
