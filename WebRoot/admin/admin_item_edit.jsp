<%@page import="edu.tongji.sse.ibm.pojo.Res"%>
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
				<li><a href="newslist?sort=cdug">cdug新闻</a></li>
				<li><a href="newslist?sort=club">俱乐部新闻</a></li>
				<li><a href="newslist?sort=stu">学生竞赛</a></li>
			</ul>
		</div>
	</div>
	<div class="span12 well">
		<form class="save-redo-form" method="post" action="saveNews?id=${id}" ENCTYPE="multipart/form-data">
		<div class="row">
			<div class="span6">
					<label>标题: <input type="text" name="title" value="${title}"> </label>
			</div>
			<div class="span6">
				上传文件:<input class="btn" type="file" name="uploadFile"><br/>
			             上传文件:<input class="btn" type="file" name="uploadFile">
			</div>
		</div>
		<div class="">
			<textarea name="content" id="ueditor">${content}</textarea>
		</div>
		<%
			Set<Res> filelist =(Set<Res>) request.getAttribute("filelist");
			Res file = new Res();
			Iterator<Res> itf = filelist.iterator();
			while(itf.hasNext()){
			file = itf.next();
		 %>
		 <div>
		<li><a href="<%=basePath + file.getURL()%>"><%=file.getName()%></a></li>
		<a href="deleteFile?fileId=<%=file.getId() %>&id=${id}">删除</a>
		</div>
<%} %>
		<button type="submit" class="btn btn-primary">保存</button>
		<button class="btn btn-primary">重置</button>
		</form>
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
		var ue = UE.getEditor('ueditor');
	</script>
</body>
</html>