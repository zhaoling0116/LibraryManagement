<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title></title>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/bootstrap.min.css"/>
		<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-2.2.4.min .js" ></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/js/bootstrap.min.js" ></script>
	</head>
	<body>
		<div class="container">
			<form name="form1" method="post" class="form form-horizontal">
				<input style="display: none">
				<input type="password" style="display: none">
				<div class="form-group">
					<label class="control-label col-sm-2">用户名：</label>
					<div class="col-sm-8">
						<input  class="form-control" name="" placeholder="输入用户名"/>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">密码：</label>
					<div class="col-sm-8">
						<input  class="form-control" type="password" name="" placeholder="输入密码"/>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">确认密码：</label>
					<div class="col-sm-8">
						<input  class="form-control" type="password" name="" placeholder="输入确认密码"/>
					</div>
				</div>
				<div class="form-group text-center">
					<button type="button" class="btn btn-primary" onclick="btn_save()">保存<span class="glyphicon glyphicon-saved"></span></button>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<button type="button" class="btn btn-primary" onclick="btn_back()">返回<span class="glyphicon glyphicon-off"></span></button>
				</div>
			</form>
		</div>
	</body>
	<script type="text/javascript">
		function btn_save(){
			document.form1.action = "<%=request.getContextPath()%>/student/addsave.action";
			document.form1.submit();
		}
		function btn_back(){
			history.back();
		}
	</script>
</html>
