<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title></title>
		<link rel="stylesheet" type="text/css" href="../../css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="../../css/bootstrap-datetimepicker.min.css"/>
		<script type="text/javascript" src="../../js/jquery-2.2.4.min .js" ></script>
		<script type="text/javascript" src="../../js/bootstrap.min.js" ></script>
		<script type="text/javascript" src="../../js/bootstrap-datetimepicker.min.js" ></script>
		<script type="text/javascript" src="../../js/bootstrap-datetimepicker.zh-CN.js" ></script>
		<script type="text/javascript" src="../../js/bootstrap-datetimepicker.fr.js" ></script>
	</head>
	<body>
		<div class="container">
			<form name="form1" method="post" class="form form-horizontal">
				<div class="form-group">
					<label class="control-label col-sm-2">书名：</label>
					<div class="col-sm-8">
						<input  class="form-control" name="" placeholder="输入内容"/>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">价格：</label>
					<div class="col-sm-8">
						<input  class="form-control" name="" placeholder="输入内容"/>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">登记日期：</label>
					<div class="col-sm-8">
						<div class="input-group">
							<input type="text" class="form-control" id="mydate" name="" placeholder="点击选择时间"/>
							<div class="input-group-btn">
								<button type="button" class="btn btn-default">
									<span class="glyphicon glyphicon-calendar"></span>
								</button>
							</div>
						</div>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">是否是新书：</label>
					<div class="col-sm-8">
						<div class="radio-inline">
							<label>
								<input type="radio" name="a" value="1" checked/>新书
							</label>
						</div>
						<div class="radio-inline">
							<label>
								<input type="radio" name="a" value="0"/>旧书
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
		$("#mydate").datetimepicker({
	        minView: 'month',
	        format:'yyyy-mm-dd',
	        weekStart: 1,
	        todayBtn: 1,
	        autoclose: 1,
	        todayHighlight: 1,
	        startView: 2,
	        forceParse: 0,
	        showMeridian: 1,
	        language: 'zh-CN'
	    });
	</script>
</html>