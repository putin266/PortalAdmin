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
    
    <link rel="stylesheet" type="text/css" href="assets/bootstrap/css/datepicker.css">
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
				<li><a href="newslist?sort=portal">主页焦点新闻</a></li>
				<li><a href="newslist?sort=activity">主页活动公告</a></li>
				<li><a href="newslist?sort=cdug">cdug新闻</a></li>
				<li><a href="newslist?sort=club">俱乐部新闻</a></li>
				<li class="nav-header">CDUG管理</li>
				<li class="active"><a href="signupmanage">报名管理</a></li>
        </ul>
      </div>
    </div>
    <div class="span12 well">
    <form>
    <input type="file" id="res"  multiple="multiple"> 
    <button class="btn btn-success" type="submit">上传</button>
    </form>
    </div>

    <!-- scripts -->
    <s:include value="../include/scripts.jsp" />
    <script type="text/javascript" src="assets/bootstrap/js/bootstrap-datepicker.js"></script>
    <script type="text/javascript">
      $('#beginTime').datepicker({format: "yyyy-mm-dd"})
      $('#endTime').datepicker({format: "yyyy-mm-dd"})
    </script>
  </body>
</html>