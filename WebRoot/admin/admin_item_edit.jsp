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
	<base href="<%=basePath%>">
	<title>同济大学IBM技术中心后台管理</title>
	
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="同济大学IBM技术中心">
	<meta http-equiv="content-type" content="text/html; charset=UTF-8">
	
	<s:include value="../include/links.jsp" />

</head>

<body>
	<div class="admin-container">
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
				<li><a href="newslist?sort=portal">主页焦点新闻</a></li>
				<li><a href="newslist?sort=activity">主页活动公告</a></li>
				<li><a href="newslist?sort=cdug">cdug新闻</a></li>
				<li><a href="newslist?sort=club">俱乐部新闻</a></li>
				<li class="nav-header">CDUG管理</li>
				<li><a href="signupmanage">报名管理</a></li>
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
	</div>

	<!-- scripts -->
	<s:include value="../include/scripts.jsp" />
	<script type="text/javascript">
		var ue = UE.getEditor('ueditor');
	</script>
</body>
</html>