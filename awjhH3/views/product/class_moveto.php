<?php $this->load->view('head'); ?>
</head>
<body>
<?php echo $form; ?>
<table class="xTable">
  <tr>
    <th height="30" colspan="2" class="left">移动到</th>
  </tr>
  <tr>
    <td width="10%" class="right">请选择分类：</td>
    <td align="left"><select name="bid">
        <?php foreach ($classic as $k=>$v){
    	if ($bid==$v['id']) {
    		echo '<option value="'.$v['id'].'" selected>'.$v['name'].'</option>';
    	}
    	else {
    		echo '<option value="'.$v['id'].'">'.$v['name'].'</option>';
    	}
    }
    ?>
      </select></td>
  </tr>
  <tr>
    <td colspan="2" class="center"><input type="hidden" name="sid" value="<?php echo $sid;?>" />
      <input type="submit" name="Submit" value="提交" class="submit" /></td>
  </tr>
</table>
</form>
<?php $this->load->view('foot'); ?>
