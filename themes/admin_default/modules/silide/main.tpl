<!-- BEGIN: main -->

<div class="table-responsive">
	<table class="table table-striped table-bordered table-hover">
		<caption>{LANG.title}</caption>
	<col span="5" style="white-space:nowrap" />
	<col style=";white-space:nowrap" />
	<col style=";white-space:nowrap" />
	<thead>
	
	<tr>
	<th width="10">Lua chon</th>
	<th width="20">{LANG.sapxep}</th>
	<th width="200">{LANG.tenhinh}</th>
	<th width="320" class="text-center">{LANG.hinhanh}</th>
	<th class="text-center">{LANG.hieuluc}</th>
	<th class="text-center">{LANG.thaotac}</th>
	</tr>
	</thead>
	
		<!-- BEGIN: sub -->
	    <tbody>
	    <tr>
	    <td width="10"><input class="dell" name="checkall" type="checkbox" value="{config.id}" /></td>
	    <td class="text-center">
	        <select id="{config.id}" name="{config.id}" class="form-control sapxep">
	        	<!-- BEGIN: sapxep -->
	            {sapxep}            
	            <!-- END: sapxep -->
	            
	        </select>
	    </td>
	    <td><a href="{config.url}" title="{config.url}" target="_blank">{config.name}</a></td>
	    <td class="text-center"><img src="{config.link}" width="315px" /></td>
	    <td class="text-center">
	        <input name="{config.id}" id="kichhoat" type="checkbox" class="kichhoat"  {config.khoa} />
	    </td>
	    <td class="text-center"> 
	        <span class="edit_icon"><a href="{url}{action.sua}{config.id}">{LANG.tt_sua}</a></span> | 
	        <span class="delete_icon"><a class='delfile' href="{url}{action.xoa}{config.id}">{LANG.tt_xoa}</a></span>
	    </td>
	    </tr>
	    <!-- END: sub -->
		</tbody>
	</table>
</div>
<table class="table table-striped table-bordered table-hover">
	<tfoot>
		<tr>
			<td><span> 
            <a href='javascript:void(0);' id='checkall'>{LANG.chontatca}</a>&nbsp;&nbsp;
			<a href='javascript:void(0);' id='uncheckall'>{LANG.bochontatca}</a>&nbsp;&nbsp;
			</span>
			</span> <span class="delete_icon"> <a id='delfilelist'
				href="javascript:void(0);">Delete</a> </span></td>
			<td align="right"></td>
		</tr>
	
 </tfoot>
</table>
<script type='text/javascript'>

$(function()
{
	$('#checkall').click(function(){
		$('input[class="dell"]').each(function(){		
			$(this).attr('checked','checked');
		});
	});

	$('#uncheckall').click(function(){
		$('input[class="dell"]').each(function(){
			$(this).removeAttr('checked');
		});
	});
	
	$('#delfilelist').click(function(){
		if (confirm("{LANG.tb_delall}"))
		{
			var listall = [];
			$('input.dell:checked').each(function(){
				listall.push($(this).val());
			});
			if (listall.length<1){
				alert("{LANG.tb_checkrong}");
				return false;
			}
			$.ajax({
				type: 'POST',
				url: 'index.php?phattrien=silide&op=delall',
				data:'listall='+listall,
				success: function(data){
					alert(data);
					window.location='index.php?phattrien=silide';
				}
			});
		}
	});
	
	
	
	$('a[class="delfile"]').click(function(event)
		{
			event.preventDefault();
			if (confirm("{LANG.tb_xoa}"))
			{
				var href = $(this).attr('href');
				$.ajax(
				{
					type: 'POST',
					url: href,
					data: '',
					success: function(data)
					{
						alert(data);
						window.location = 'index.php?phattrien=silide';
					}
				});
			}
	});	
	
	$('.sapxep').change(function(event)
		{
			event.preventDefault();
				var href = 'index.php?phattrien=silide&op=sapxep&id='+$(this).attr('id')+"&val="+$(this).val();
				$.ajax(
				{
					type: 'POST',
					url: href,
					data: '',
					success: function(data)
					{
						alert(data);
						window.location = 'index.php?phattrien=silide';
					}
				});
			
	});	
	
	$('.kichhoat').click(function(event)
		{
			if (confirm("{LANG.tb_khoa}"))
			{
			event.preventDefault();			
			var href = 'index.php?phattrien=silide&op=khoa&id='+$(this).attr('name');
				$.ajax(
				{
					type: 'POST',
					url: href,
					data: '',
					success: function(data)
					{
						alert(data);
						window.location = 'index.php?phattrien=silide';
					}
			});
			}
			else
			{
				$(this).attr('checked','checked');
				}
				
	});
});	
</script><!-- END: main -->