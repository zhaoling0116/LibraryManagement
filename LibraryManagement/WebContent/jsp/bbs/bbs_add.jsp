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
		<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/bootstrap-datetimepicker.min.css"/>
		<script type="text/javascript" src="<%=request.getContextPath() %>/js/bootstrap-datetimepicker.min.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/js/bootstrap-datetimepicker.zh-CN.js"></script>
		<script type="text/javascript" src="<%=request.getContextPath() %>/js/bootstrap-datetimepicker.fr.js"></script>
	</head>
	<body>
		<div class="container">
			<form name="form1" method="post" class="form form-horizontal">
				<div class="form-group">
					<label class="control-label col-sm-2">内容：</label>
					<div class="col-sm-8">
						<input  class="form-control" name="content" placeholder="输入内容"/>
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2">时间：</label>
					<div class="col-sm-8">
						<div class="input-group">
							<input type="text" class="form-control" id="mydate" name="intime" placeholder="点击选择时间"/>
							<div class="input-group-btn">
								<button type="button" class="btn btn-info">
									<span class="glyphicon glyphicon-calendar"></span>
								</button>
							</div>
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
			document.form1.action = "<%=request.getContextPath()%>/bbs/addsave.action";
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
