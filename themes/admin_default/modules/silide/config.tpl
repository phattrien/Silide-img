<!-- BEGIN: main -->


<div class="quote" style="width:97%">
<blockquote><span><font color="#FF0000">{err}</font>{LANG.chuthich}</span></blockquote>
</div>
<div class="clear"></div>
<form class="form-inline" action="{NV_BASE_ADMINURL}index.php?{NV_NAME_VARIABLE}={MODULE_NAME}&{NV_OP_VARIABLE}={OP}&id={config.id}" method="post">

<div style="WIDTH:100%;">

<div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
		<col style="width:50px;white-space:nowrap" />
	
	<col valign="top" width="10px" />
	
	<tbody>
	<tr>
	<td><strong>{LANG.tieude}:</strong></td>
	<td><input class="form-control" name="txtname" id="txtname" type="text" value="{config.name}" style="width:255px" maxlength="255" /></td>
	</tr>
	<tr>
	<td><strong>{LANG.linkweb}:</strong></td>
	<td><input class="form-control" name="txtweb" id="txtweb" type="text" value="{config.url}" style="width:255px" maxlength="255" /></td>
	</tr>
	<tr>
	<td><strong>{LANG.chonanh} :</strong></td>
	<td>
	<input class="form-control" type="text" id="txtlink" name="txtlink" value="{config.link}" readonly="readonly"/>
	    <input type="button" id="selectimg" name="selectimg" value="Browse Server">
	</td>
	</tr>
	<tr>
	<td><strong>{LANG.kichhoat}:</strong></td>
	
	<td><input name="kichhoat" id="kichhoat" type="checkbox" value="1" {config.khoa}/></td>
	</tr>
	</tbody>
	</table>
</div>
<div style="PADDING-TOP:0px;">
<input class="btn btn-primary" type="submit" name="guidi" id="guidi" value="{LANG.save}" />
</div>
</div>
</form>
<script type="text/javascript">
	$("input[name=selectimg]").click(function()
	{
		var area = "txtlink"; // return value area
		var type = "image";
		var path = "{PATH}";
		nv_open_browse("{BROWSER}");
		return false;
	});
</script>

<!-- END: main -->