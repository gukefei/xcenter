<script type="text/javascript">
$(document).ready(function() {
	$('#form1').validateMyForm();
});
</script>
</head>
<body>
<table class="xTable">
  <tr>
    <th colspan="2">回复</th>
  </tr>
  <?php echo $form; ?>
    <tr>
      <td width="10%" class="right">回复内容：</td>
      <td class="left"><textarea name="content" id="content" cols="45" rows="6" class="required"></textarea></td>
    </tr>
    <tr>
      <td colspan="2" class="center"><input type="hidden" name="id" value="<?Php echo $id; ?>" /><input type="submit" name="Submit" value="提交" class="submit" /></td>
    </tr>
  </form>
</table>
