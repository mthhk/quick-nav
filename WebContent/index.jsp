<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<title>按内配单号提数</title>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1.0,user-scalable=no">
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Cache-Control" content="no-cache" />
<meta http-equiv="Expires" content="0" />
<meta name="description" content="">
<link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
<script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<style type="text/css">
row_ {
	margin-top: 20px
}
</style>
</head>
<script type="text/javascript">
	$(document).ready(function() {
		window.nav.setActive("nav-index");
	});
</script>
</script>
<body>
	<div class="container">
		<%@include file="nav.jsp"%>
		<div style="padding-top: 60px">
			<h3>Hello World</h3>
			本实例使用了bootstrap-3的导航组件，文件存放于某些cdn服务器中，如果你看到的页面是没有格式的，请自行补全相关css及js文件(select2.js非必须)
			本项目只是本人对于所有“导航”相关的一个思想性的总结，只不过用js来表达罢了。这种处理导航的方式可以扩展到包括<code>android开发</code>在内的其他应用场景
			<h3>本实例的中心思想</h3>
			利用jsp的include功能(模版语言也有提供相关功能)，将导航组件集中在一个文件中。利用json文件配置菜单（<strong>这个功能甚至可以用来实现菜单的权限控制）</strong>
			<h3>Get Start</h3>
				<h4>1，编写navigation.json</h4>
				为你的导航预设好相关的数据，这样就能够让js自动填充了。
				请对照上面的导航和navigation.json文件。
				<h4>2，页面引入nav.jsp文件</h4>
				请参看本页面的引入方式：<code>line:31</code>
				<h4>3，设置当前页面所对于的导航项的id</h4>
				<pre>
	$(document).ready(function() {
		window.nav.setActive("nav-index");
	});
				</pre>
				<h4>At Last</h4>
				细心的你一定发现了：<strong>navigation.json里面有<code>search</code>相关的配置，但是nav.jsp中却没有相关处理.</strong></br>
				是的，下班时间到了，是时候dota一波了！</br>
				如果你愿意，欢迎随时pull request!!!
		</div>
	</div>
</body>
</html>