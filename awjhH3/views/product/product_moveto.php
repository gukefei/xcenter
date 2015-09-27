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
    <th height="30" colspan="2" class="left">移动到</th>
  </tr>
  <tr>
    <td width="10%" class="right">请选择分类：</td>
    <td align="left"><select name="classic" id="classic" class="required">
        <option value="">请选择分类</option>
        <?php foreach ($classic as $k=>$v){ ?>
        <optgroup label="<?php echo $v['name']; ?>">
        <?php foreach($v['sclass'] as $i=>$j){ ?>
        <option value="<?php echo $j['id']; ?>"><?php echo $j['name']; ?></option>
        <?php } ?>
        </optgroup>
        <?php } ?>
      </select></td>
  </tr>
  <tr>
    <td colspan="2" class="center"><input type="hidden" name="ids" value="<?php echo $ids;?>" />
      <input type="submit" name="Submit" value="提交" class="submit" /></td>
  </tr>
</table>
</form>
<?php $this->load->view('foot'); ?>
