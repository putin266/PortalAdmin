<%@page import="edu.tongji.sse.ibm.pojo.ProfileSort"%>
<%@page import="edu.tongji.sse.ibm.pojo.CDUG_signUpForm"%>
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
				<li class="active"><a href="signupmanage">报名管理</a></li>
        </ul>
      </div>
    </div>
    <div class="span12 well">
      <div class="row">
      <form action="toexcle" method="post">
        <div class="span3">
          <label>开始时间
            <input type="text" id="beginTime" name="beginTime">
          </label>
        </div>
        <div class="span3">
          <label>结束时间
            <input type="text" id="endTime" name="endTime">
          </label>
        </div>
        <div class="span2" style="padding-top: 20px;">
         <!--  <a class="btn btn-success" href="" >查看报名名单</a>-->
          <button class="btn btn-success" type="submit">下载报名表格</button>
        </div>
        </form>
      </div>
      <div class="row" style="padding-top: 30px;">
        <table class="table table-bordered table-condensed">
          <caption>报名名单</caption>
          <thead>
            <tr>
              <th>#</th>
              <th>姓名</th>
              <th>性别</th>
              <th>手机</th>
              <th>邮箱</th>
              <th>工作单位</th>
              <th>邮编</th>
              <th>地址</th>
              <th>...</th>
            </tr>
            
            <%
            	List<CDUG_signUpForm> formlist = (List<CDUG_signUpForm>) request.getAttribute("formlist");
            	if(formlist != null){
            	CDUG_signUpForm form = new CDUG_signUpForm();
            	Iterator<CDUG_signUpForm> itf = formlist.iterator();
            	while(it.hasNext()){
            	form = itf.next();
             %>
             <tr>
              <th><%=form.getId() %></th>
              <th><%=form.getName() %></th>
              <th><%=form.getSex() %></th>
              <th><%=form.getPhone() %></th>
              <th><%=form.getEmail() %></th>
              <th><%=form.getCompany() %></th>
              <th><%=form.getCom_postCode() %></th>
              <th><%=form.getCom_address() %></th>
              <th>...</th>
            </tr>
             <%} }%>
          </thead>
          <tbody>
          </tbody>
        </table>
      </div>
    </div>
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