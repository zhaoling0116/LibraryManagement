<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<ul class="nav nav-tabs nav-stacked" style="margin-left: 10px;">
	<li><a href="javascript:gopage('<%=request.getContextPath()%>/student/query.action')"><span class="glyphicon glyphicon-menu-right"></span>学生查询</a></li>
	<li><a href="javascript:gopage('<%=request.getContextPath()%>/bbs/query.action')"><span class="glyphicon glyphicon-menu-right"></span>bbs查询</a></li>
	<li><a href="javascript:gopage('<%=request.getContextPath()%>/jsp/bookinfo/bookinfo_list.jsp')"><span class="glyphicon glyphicon-menu-right"></span>bookinfo查询</a></li>
	<li><a href="javascript:gopage('<%=request.getContextPath()%>/jsp/manager/manager_list.jsp')"><span class="glyphicon glyphicon-menu-right"></span>manager查询</a></li>
	<li><a href="javascript:gopage('<%=request.getContextPath()%>/jsp/member/member_list.jsp')"><span class="glyphicon glyphicon-menu-right"></span>member查询</a></li>
</ul>