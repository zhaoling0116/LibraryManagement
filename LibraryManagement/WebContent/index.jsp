<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
		<title>图书管理系统</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
		<link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css"/>
		<link rel="stylesheet" href="css/style.css" media="screen" type="text/css" />
		<script type="text/javascript" src="js/jquery-2.2.4.min .js" ></script>
		<script type="text/javascript" src="js/bootstrap.min.js" ></script>
	</head>
	<style>
		html,body{
			height: 100%;
			background-color: #eee;
		}
		.ge{
			border: 0px solid salmon;
			height: 90%;
		}
		.panel{
			height: 100%;
			margin-right: -15px;
			margin-left: -15px;
		}
	</style>
	<body>
		<nav class="nav navbar-inverse" style="background-color:darkblue">
			<div class="nav navbar-header">
				<!-- 导航头 -->
				<div class="loader font3" style="color: white;font-size: 35px;">
				  <span>T</span>
				  <span class="span2">u</span>
				  <span class="span3">r</span>
				  <span class="span4">i</span>
				  <span class="span5">n</span>
				  <span class="span6">g</span>
				</div>
				<!--带有切换功能的导航按钮已经封装好js代码在移动端的效果就是折叠后的状态 -->
        		<!--html5中自定义属性 -->
        		<!--data-toggle触发事件的名称 折叠动画效果的名称是 collapse -->
        		<!--data-target触发事件的目标标签 #id .class -->
				<button class="navbar-toggle" data-toggle= "collapse" data-target="#mynav">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="mynav" >
				<!-- 导航内容 -->
				<ul class="nav navbar-nav">
					<li><a href="#">首页</a></li>
					<li><a href="#">个人中心</a></li>
					<li><a href="#">联系我们</a></li>
				</ul>
				
				
				<!-- 导航尾 -->
				<div class="nav navbar-form navbar-right">
					<div class="form-group">
						<input type="search" class="form-control" name="" required="" placeholder="Search" x-webkit-speech="" x-webkit-grammar="builtin:search" lang="zh-CN">
					</div>
					<div class="form-group text-center">
						<button class="btn btn-primary form-control">搜索<span class="glyphicon glyphicon-search"></span></button>
					</div>
				</div>
				
				<ul class="nav navbar-nav navbar-right">
					<li>
						<a href="#" data-toggle="dropdown">
							<span class="glyphicon glyphicon-user"></span>:张飞
							<span class="caret"></span>
						</a>
						<!--下拉菜单的关键字 dropdown 他不需要data-target他是默认两个同父的子标签就好使 -->
						<ul class="dropdown-menu">
							<li><a href="#">修改密码</a></li>
							<!--下拉菜单中的水平分割线 divider在纵向的导航中是不能用的 -->
							<li class="divider"></li>
							<li><a href="#">退出系统</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</nav>
		<div style="margin-top: 0px;height: 100%;">
			<!-- 系统左侧菜单栏 -->
			<div class="ge col-sm-4 col-md-3 col-lg-2">
				<div class="panel panel-default" style="overflow: auto;">
					<div class="panel-heading" style="background-color: papayawhip;">
						<label class="control-label text-muted">系统菜单</label>
						<span class="close">
							<span class="caret"></span>
						</span>
					</div>
					<div class="panel-body" >
						<ul class="nav nav-tabs nav-stacked">
							<li>
								<!-- collapse的意思是默认以收起的状态显示
			        				collapse in 一起使用就是让折叠部分默认是打开的
			        			-->
								<a href="#" class="collapse" data-toggle="collapse" data-target="#zdmenu1">
									<span class="glyphicon glyphicon-plus"></span>
									图书管理
								</a>
								<div id="zdmenu1" class="collapse in">
									<%@include file="left.jsp" %>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- 系统右侧内容栏 -->
			<div class="ge col-sm-8 col-md-9 col-lg-10">
				<div class="panel panel-default" >
					<div class="panel-heading" style="background-color: papayawhip;">
						<label class="control-label text-muted">主体</label>
					</div>
					<div class="panel-body" style="height: 100%;">
						<iframe src="default.html" style="width: 100%;height: 95%;border: none;"></iframe>
					</div>
				</div>
			</div>
		</div>
	</body>
	<script type="text/javascript">
		function gopage(data){
			$('iframe').attr('src',data);
			$('iframe').hide();
			$('iframe').fadeIn(500);
		}
	</script>
</html>

