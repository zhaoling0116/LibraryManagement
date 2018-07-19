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
					<label class="control-label col-sm-2">姓名：</label>
					<div class="col-sm-8">
						<input  class="form-control" name="name"/>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">密码：</label>
					<div class="col-sm-8">
						<input  class="form-control" type="password" name="pwd" placeholder="输入密码"/>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">确认密码：</label>
					<div class="col-sm-8">
						<input  class="form-control" type="password" name="repwd" placeholder="输入确认密码"/>
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
			//清空所有提示
			$("input[name='name'] + span").remove();
			$("input[name='pwd'] + span").remove();
			$("input[name='repwd'] + span").remove();
			//验证用户名和密码不 能为空
			if( $.trim($("input[name='name']").val() )=="" ){
				$("input[name='name'] + span").remove();
				$("input[name='name']").after("<span style='color:red;'>姓名不能为空</span>");
				return;
			}
			if($.trim($("input[name='pwd']").val() )==""){
				$("input[name='pwd'] + span").remove();
				$("input[name='pwd']").after("<span style='color:red;'>密码不能为空</span>");
				return;
			}
			//验证两次密码是否一致
			var m1 = $("input[name='pwd']").val();
			var m2 = $("input[name='repwd']").val();
			if(m1 != m2){
				$("input[name='repwd'] + span").remove();
				$("input[name='repwd']").after("<span style='color:red;'>两次密码不一致</span>");
				return;
			}else{
				document.form1.action = "<%=request.getContextPath()%>/student/addsave.action";
				document.form1.submit();
			}
		}
		function btn_back(){
			history.back();
		}
	</script>
</html>
