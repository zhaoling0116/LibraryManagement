<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/bootstrap.min.css"/>
		<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-2.2.4.min .js" ></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/js/bootstrap.min.js" ></script>
	</head>
	<body>
		<div class="container">
			<form name="form1" method="post" class="form form-horizontal">
				<div class="form-group">
					<label class="control-label col-sm-2">用户名：</label>
					<div class="col-sm-8">
						<input  class="form-control" name="" placeholder="输入用户名"/>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">证件类型：</label>
					<div class="col-sm-8">
						<select class="form-control">
							<option value="">--请选择--</option>
							<option value="身份证">身份证</option>
							<option value="驾驶证">驾驶证</option>
							<option value="军官证">军官证</option>
							<option value="准考证">准考证</option>
							<option value="产权证">产权证</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">证件号：</label>
					<div class="col-sm-8">
						<input  class="form-control" name="" placeholder="输入证件号"/>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">电话：</label>
					<div class="col-sm-8">
						<input  class="form-control" name="" placeholder="输入电话"/>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">是否冻结：</label>
					<div class="col-sm-8">
						<div class="radio-inline">
							<label>
								<input type="radio" name="a" value="1" />冻结
							</label>
						</div>
						<div class="radio-inline">
							<label>
								<input type="radio" name="a" value="0" checked/>不冻
							</label>
						</div>
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
			document.form1.action = "";
			document.form1.submit();
		}
		function btn_back(){
			history.back();
		}
	</script>
</html>