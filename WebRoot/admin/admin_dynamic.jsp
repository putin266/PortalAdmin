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
<title>同济大学IBM技术中心后台管理</title>

<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="同济大学IBM技术中心">
<meta http-equiv="content-type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css"
	href="../assets/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css"
	href="../assets/bootstrap/css/bootstrap.responsive.css">
<link rel="stylesheet" type="text/css"
	href="../assets/bootstrap/js/google-code-prettify/prettify.css">
<link rel="stylesheet" type="text/css"
	href="../assets/stylesheets/css/custom.css">
<link rel="stylesheet" type="text/css"
	href="../assets/stylesheets/css/admin.css">
<script type="text/javascript" src="ueditor/editor_config.js"></script>
<script type="text/javascript" src="ueditor/editor_all.js"></script>
<script type="text/javascript" src="../assets/bootstrap/js/bootstrap.js"></script>

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
	<script type="text/javascript" src="../assets/bootstrap/js/jquery.js"></script>
	<script type="text/javascript"
		src="../assets/bootstrap/js/google-code-prettify/prettify.js"></script>
	<script type="text/javascript"
		src="../assets/bootstrap/js/bootstrap-transition.js"></script>
	<script type="text/javascript"
		src="../assets/bootstrap/js/bootstrap-alert.js"></script>
	<script type="text/javascript"
		src="../assets/bootstrap/js/bootstrap-modal.js"></script>
	<script type="text/javascript"
		src="../assets/bootstrap/js/bootstrap-dropdown.js"></script>
	<script type="text/javascript"
		src="../assets/bootstrap/js/bootstrap-scrollspy.js"></script>
	<script type="text/javascript"
		src="../assets/bootstrap/js/bootstrap-tab.js"></script>
	<script type="text/javascript"
		src="../assets/bootstrap/js/bootstrap-tooltip.js"></script>
	<script type="text/javascript"
		src="../assets/bootstrap/js/bootstrap-popover.js"></script>
	<script type="text/javascript"
		src="../assets/bootstrap/js/bootstrap-button.js"></script>
	<script type="text/javascript"
		src="../assets/bootstrap/js/bootstrap-collapse.js"></script>
	<script type="text/javascript"
		src="../assets/bootstrap/js/bootstrap-carousel.js"></script>
	<script type="text/javascript"
		src="../assets/bootstrap/js/bootstrap-typeahead.js"></script>
	<script type="text/javascript">
		
	</script>
</body>
</html>