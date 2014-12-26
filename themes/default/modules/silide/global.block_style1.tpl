<!-- BEGIN: main -->
 
<link rel="Stylesheet" type="text/css" href="{NV_BASE_SITEURL}themes/default/css/style1/blinds.css" />  
<script language="Javascript" type="text/javascript" src="{NV_BASE_SITEURL}themes/default/css/style1/jquery-1.4.1.js"></script>
<script language="Javascript" type="text/javascript" src="{NV_BASE_SITEURL}themes/default/css/style1/jquery.blinds-0.9.js"></script>
 

<style type="text/css">
.change_link {
	display: block;
	width: 20px;
	height: 20px;
	font-size: 12pt;
	background-color: #eee;
	float: left;
	margin-right: 5px;
	text-align: center;
	margin-top: 10px;
	border: 1px solid #bbb;
	text-decoration: none;
}
.slideshow {overflow: hidden;
	width:{config.width}px !important; 
	 }
.slideshow ul {overflow: hidden;
	width:{config.width}px !important; 
	 }
	.slideshow ul li img {overflow: hidden;
	width:{config.width}px !important;
	height:{config.height}px !important;
	
	 } 	 
	 	.slideshow div {overflow: hidden;
	width:{config.width}px !important;
	height:{config.height}px !important;
	 }  
</style>

	
 
	<div id="container">
	 
		<div class="slideshow"> 
		   <ul>  
		   <!-- BEGIN: loop --> 
			  <li><img src="{silide.link}" alt="{silide.name}"/></li>
		 	<!-- END: loop -->
		  </ul> 
		</div> 
		
	 

<div> 

		<!-- BEGIN: loopid -->	<a href="#" class="change_link" onclick="$('.slideshow').blinds_change({silide.id})">{silide.id}</a><!-- END: loopdi -->
		 
		 </div> 

	
		<script type="text/javascript">
			$(window).load(function () { 
				$('.slideshow').blinds();
			})
		</script>

		
	</div>
	
	 

<!-- END: main -->