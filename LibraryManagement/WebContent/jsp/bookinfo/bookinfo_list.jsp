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
		<script type="text/javascript" src="<%=request.getContextPath() %>/js/common.js"></script>
	</head>
	<style>
		.nav{
			/*border: 1px solid darkgray;*/
			border-radius: 10px;
			/*box-shadow: 5px 5px 5px gray;*/
		}
	</style>
	<body>
		<div class="container">
			<ul class="nav nav-tabs navbar-right">
				<li><a href="javascript:query()">查询</a></li>
				<li><a href="javascript:addpage()">添加</a></li>
				<li><a href="javascript:deleteRecord()">删除</a></li>
			</ul>
		</div>
		<div class="container col-sm-4 col-sm-offset-4">
			<form class="form form-horizontal">
				<div class="form-group">
					<label class="col-sm-4 control-label">书名:</label>
					<div class="col-sm-8">
						<input class="form-control" type="text"/>
					</div>
				</div>
			</form>
		</div>
		<div class="container"></div>
		<div class="container">
			<form class="form-horizontal" name="delForm">
				<table class="table table-hover table-condensed">
					<caption class="text-center">查询结果</caption>
					<thead>
						<tr class="info">
							<th>序号</th>
							<th><input type="checkbox" onclick="checkall('ids')"/></th>
							<th>书名</th>
							<th>价格</th>
							<th>登记日期</th>
							<th>是否为新书</th>
							<th>功能操作</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td><input type="checkbox" name="ids" value="1"/></td>
							<td>Visual Basic数据库开发实例解析</td>
							<td>48.00</td>
							<td>2003年8月</td>
							<td>是</td>
							<td><a href="javascript:editpage('1')">操作</a></td>
						</tr>
						<tr>
							<td>2</td>
							<td><input type="checkbox" name="ids" value="1"/></td>
							<td>Visual Basic数据库开发实例解析</td>
							<td>48.00</td>
							<td>2003年8月</td>
							<td>是</td>
							<td><a href="javascript:editpage('1')">操作</a></td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
	</body>
	<script type="text/javascript">
		//查询
		function query(){
			
		}
		//转到添加页面
		function addpage(){
			location.href = "<%=request.getContextPath()%>/jsp/bookinfo/bookinfo_add.jsp";
		}
		//转到修改页面
		function editpage(id){
			location.href = "<%=request.getContextPath()%>/jsp/bookinfo/bookinfo_edit.jsp";
		}
		//删除记录
		function deleteRecord(){
			if(!hasChecked(delForm)){
				alert("请先选择要 删除的记录");
			}else if(confirm("确定要删除选中的记录吗？")){
				document.delForm.action = "<%=request.getContextPath()%>/student/delete.action";
				document.delForm.submit();
			}
			
		}
	</script>
</html>