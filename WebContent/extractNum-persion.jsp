<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>按创建人提数</title>
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
	<script src="http://cdn.bootcss.com/select2/4.0.0-rc.2/js/select2.js"></script>
	<link rel="stylesheet" href="http://cdn.bootcss.com/select2/4.0.0-rc.2/css/select2.css">
	<style type="text/css">
		row_{margin-top: 20px}
	</style>
</head>
<script type="text/javascript">
	document.
	$(document).ready(function(){
		$(".js-example-basic-multiple").select2({
			placeholder : '请选择内配类型'
		});
		window.nav.setActive("nav-extract-num");
		};
	});
	function exportExcel(){
		var exportType=[];
		var users=null;
		$.each($("#exportType").select2("data"),function(k,v){
			exportType[exportType.length]=v.id;
		})
		users=$("#createBy").val();
		window.location.href="extractNum.action?actionType=1&createBy="+users+"&exportTypes="+exportType;
	}
</script>
</script>
<body >
	<div class="container">
		<%@include file="nav.jsp"%>
		<div class="" style="padding-top: 60px">
			<div class="panel-group">
				<div class="panel panel-success">
					<div class="panel-heading">
						<h3 class="panel-title">提数条件</h3>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-xs-6">
								<div class="input-group input-group-md">
									<span class="input-group-addon">
										<div class="glyphicon glyphicon-time"></div>
									</span>
									<input id="createBy" type="text" class="form-control" placeholder="请输入创建内配单的用户，多个用户请用半角逗号分割" value="bjmachunrong">
								</div>
							</div>
							<div class="col-xs-6">
								<div class="btn-group" data-toggle="buttons">
									<label class="btn btn-default active"> <input type="radio" name="options" id="option1" autocomplete="off" checked>全部
									</label> <label class="btn btn-default"> <input type="radio" name="options" id="option2" autocomplete="off"> 已删除
									</label> <label class="btn btn-default"> <input type="radio" name="options" id="option3" autocomplete="off"> 未删除
									</label>
								</div>
							</div>
						</div>
						<div class="row" style="margin-top: 20px">
							<div class="col-xs-8">
								<select id="exportType" name="type" style="width: 100%;" class="js-example-basic-multiple" multiple="multiple">
									<option value="5">京东自营</option>
									<option value="12">移动仓正向</option> ...
									<option value="13">移动仓逆向</option>
									<option value="10">保税仓</option>
								</select>
							</div>
						</div>
						<div class="row" align="center" style="margin-top: 20px">
							<button class="btn btn-primary" onclick="exportExcel()">导 出</button>
							<button class="btn btn-default">查看</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>