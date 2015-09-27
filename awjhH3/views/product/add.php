<?php $this->load->view('head'); ?>
<script type="text/javascript" src="<?php echo base_url().APPPATH; ?>third_party/fckeditor/fckeditor.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('#form1').validateMyForm();
});
</script>
</head>
<body>
<?php echo $form; ?>
<table class="xTable" id="pimg">
  <tr>
    <th colspan="2">新增产品</th>
  </tr>
  <tr>
    <td width="10%" class="right">请选择分类：</td>
    <td class="left"><select name="sid" id="sid" class="required">
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
    <td class="right">产品名称：</td>
    <td class="left"><input name="name" type="text" id="name" class="required ex300" /></td>
  </tr>
  <tr>
    <td class="right">上架：</td>
    <td class="left"><input name="flag" type="radio" class="radio" value="1" checked="checked" />
      是
      &nbsp;&nbsp;&nbsp;&nbsp;
      <input name="flag" type="radio" class="radio" value="2" />
      否 </td>
  </tr>
  <tr>
    <td class="right">产品图片：</td>
    <td class="left"><input type="file" name="userfile" id="file_upload" /></td>
  </tr>
  <tr>
    <td class="right">页面标题：</td>
    <td class="left"><input name="title" type="text" id="title" class="ex300" />
      &nbsp;<span class="fontcolorA">以下三项为SEO时使用，可不填</span></td>
  </tr>
  <tr>
    <td class="right">页面关键字：</td>
    <td class="left"><input name="keywords" type="text" id="keywords" class="ex500" /></td>
  </tr>
  <tr>
    <td class="right">页面描述：</td>
    <td class="left"><input name="description" type="text" id="description" class="ex500" /></td>
  </tr>
  <tr>
    <td class="right">产品描述：</td>
    <td class="left"><script type="text/javascript">
					<!--
					var oFCKeditor = new FCKeditor( 'FCKeditor1' ) ;
					oFCKeditor.Config['ToolbarStartExpanded'] = true ;
					oFCKeditor.BasePath  = '<?php echo base_url().APPPATH.'third_party/fckeditor/';?>' ;
					oFCKeditor.ToolbarSet = 'Default' ;
					oFCKeditor.Height = '450' ;
					oFCKeditor.Value  = '' ;
					oFCKeditor.InstanceName = 'FCKeditor1';
					oFCKeditor.Create() ;
					//-->
				</script></td>
  </tr>
  <tr>
    <td colspan="2" class="center"><input type="submit" name="Submit" value="提交" class="submit" /></td>
  </tr>
</table>
</form>
<?php $this->load->view('foot'); ?>
