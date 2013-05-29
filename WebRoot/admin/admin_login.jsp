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
    <title>登录|同济大学IBM技术中心后台管理</title>
	
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="同济大学IBM技术中心">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    
    <s:include value="../include/links.jsp" />
    
    <script type="text/javascript" src="../assets/bootstrap/js/bootstrap.js"></script>

  </head>
  
  <body>
    <div class="container">
      <form class="form-horizontal login-form well" action="login" method="post">
        <h4 class="pull-right" style="padding-bottom: 20px;">同济大学IBM技术中心后台管理登录<h4>
        <div class="control-group pull-left">
          <label class="control-label" for="inputUserName">用户名</label>
          <div class="controls">
            <input type="text" id="inputUserName" name="username">
          </div>
        </div>
        <div class="control-group pull-left">
          <label class="control-label" for="inputPassword">密码</label>
          <div class="controls">
            <input type="password" id="inputPassword" name="password">
          </div>
        </div>
        <div class="control-group pull-left">
          <label class="control-label" for="inputLogin"></label>
          <div class="controls">
            <button class="btn btn-primary" id="inputLogin" type="submit">登录</button>
          </div>
        </div>
      </form>
    </div>
      

      <!-- scripts -->
    <script type="text/javascript">
    </script>
  </body>
</html>