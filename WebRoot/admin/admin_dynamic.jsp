<%@page import="edu.tongji.sse.ibm.pojo.News"%>
<%@page import="edu.tongji.sse.ibm.pojo.ProfileSort"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
	<base href="<%=basePath%>">
	<title>同济大学IBM技术中心后台管理</title>
	
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="同济大学IBM技术中心">
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	
	<s:include value="../include/links.jsp" />

</head>

<body>
	<div class="admin-header">
		<h1>同济大学IBM技术中心后台管理</h1>
	</div>
	<div class="span3">
		<div class="well sidebar-nav">
			<ul class="nav nav-list">
				<li class="nav-header">静态网页管理</li>
				<%
					List<ProfileSort> sortlist =(List<ProfileSort>) request.getAttribute("sortlist");
					ProfileSort sort = new ProfileSort();
					Iterator<ProfileSort> it = sortlist.iterator();
					while(it.hasNext()){
					sort = it.next();
				%>
				<li><a href="profile?sortname=<%=sort.getSortname()%>"><%=sort.getName()%></a>
				</li>
				<%
					}
				%>
				<li class="nav-header">动态网页管理</li>
				<li><a href="newslist?sort=cdug">cdug新闻</a>
				</li>
				<li><a href="newslist?sort=club">俱乐部新闻</a>
				</li>
				<li><a href="newslist?sort=stu">学生竞赛</a>
				</li>
			</ul>
		</div>
	</div>
	<div class="span12 well">
		<div style="margin-left: 100px;">
			<a class="btn btn-success" href="publishPage?sort=${sort}">发布新闻</a>
		</div>
		<ul class="list">
		
		<%
			List<News> newslist =(List<News>) request.getAttribute("newslist");
 			News news = new News();
			Iterator<News> itn = newslist.iterator();
			while(itn.hasNext()){
			news = itn.next();
		
		 %>
			<li class="item"><a href="#"><%=news.getTitle() %></a>
				<a class="btn btn-mini btn-warning pull-right" href="deleteNews?id=<%=news.getId()%>" >删除</a>
				<a class="btn btn-mini btn-primary pull-right" href="editNews?id=<%=news.getId()%>">编辑</a></li>
				<%} %>
		</ul>
	</div>

	<!-- scripts -->
	<script type="text/javascript" src="assets/bootstrap/js/bootstrap-datepicker.js"></script>
	<s:include value="../include/scripts.jsp" />
	<script type="text/javascript">
		
	</script>
</body>
</html>