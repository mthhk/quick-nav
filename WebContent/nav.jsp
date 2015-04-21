<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<nav id="navigation-bar" class="navbar navbar-default navbar-fixed-top " role="navigation">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#main_nav">
						<span class="sr-only">切换导航</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
					</button>
					<a id="nav-site-name" class="navbar-brand" href="#">SITE-NAME</a>
				</div>
				<div id="main_nav" class="collapse navbar-collapse">
					<ul id="nav-item-container" class="nav navbar-nav">
						
					</ul>
					<div class=" navbar-right">
						<form class="navbar-form" role="search">
							<div class="form-group">
								<input type="text" class="form-control" placeholder="Search">
							</div>
							<button type="submit" class="btn btn-default">提交</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</nav>
<script type="text/javascript">
	var ns={
		setActive : function(id){
			ns.active=id;			 
		}
	};
	function initNav(){
		var root=$("#navigation-bar");
		var bar=$("#nav-item-container");
		var reg = new RegExp("\\[([^\\[\\]]*?)\\]", 'igm');
		jQuery.ajax({
			url : "navigation.json",
			type : "GET", 
			success : function(data){
				data=jQuery.parseJSON(data);
				$("#nav-site-name").html(data.title);
				for(var i=0;i<data.elements.length;i++){
					var ele=data.elements[i];
					var eleHtml="";
					if(ele.items != null){
						var tplStr=
							'<li id="[Id]" class="dropdown">'+
								'<a  href="[Target]" class="dropdown-toggle" data-toggle="dropdown">[Title]<b class="caret"></b></a>'+
							'</li>';
						 eleHtml = tplStr.replace(reg, function(node, key) {
							return {
								Id : ele.id,
								Title : ele.title,
								Target : ele.target,
							}[key];
						});
						var targetLi=$(eleHtml);
						bar.append(targetLi);
						//添加ul
						var ul=$('<ul class="dropdown-menu">');
						targetLi.append(ul);
						
						for(var j=0;j<ele.items.length;j++){
							var item=ele.items[j];
							if(item.separater != null){
								eleHtml='<li class="divider"></li>';
							}else{
								tplStr='<li><a href="[Target]">[Title]</a></li>';
								eleHtml = tplStr.replace(reg, function(node, key) {
									return {
										Id : item.id,
										Title : item.title,
										Target : item.target,
									}[key];
								});
							}
							ul.append(eleHtml);
						}
					}else{
						 var tplStr="<li id='[Id]'><a href='[Target]'>[Title]</a></li>";
						 eleHtml = tplStr.replace(reg, function(node, key) {
							return {
								Id : ele.id,
								Title : ele.title,
								Target : ele.target,
							}[key];
						});
					}
					bar.append(eleHtml);
				}
				$("#"+ns.active).addClass("active");
			}
		});
	}
	window.nav=ns;
	initNav();
</script>
<!--

//-->
</script>
