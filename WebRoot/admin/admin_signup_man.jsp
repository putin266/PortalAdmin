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
    
    <link rel="stylesheet" type="text/css" href="../assets/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="../assets/bootstrap/css/datepicker.css">
    <link rel="stylesheet" type="text/css" href="../assets/bootstrap/js/google-code-prettify/prettify.css">
    <link rel="stylesheet" type="text/css" href="../assets/stylesheets/css/custom.css">
    <link rel="stylesheet" type="text/css" href="../assets/stylesheets/css/admin.css">
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
          <li class="active"><a href="#">条目1</a></li>
          <li><a href="#">条目2</a></li>
          <li><a href="#">条目3</a></li>
          <li class="nav-header">动态网页管理</li>
          <li><a href="#">条目1</a></li>
          <li><a href="#">条目2</a></li>
        </ul>
      </div>
    </div>
    <div class="span12 well">
      <div class="row">
        <div class="span3">
          <label>开始时间
            <input type="text" id="beginTime">
          </label>
        </div>
        <div class="span3">
          <label>结束时间
            <input type="text" id="endTime">
          </label>
        </div>
        <div class="span2" style="padding-top: 20px;">
          <a class="btn btn-success" href="#">查看报名名单</a>
        </div>
        <div class="span2" style="padding-top: 20px;">
          <a class="btn btn-success" href="#">生成电子表格</a>
        </div>
        <div class="span2" style="padding-top: 20px;">
          <a class="btn btn-success" href="#">下载电子表格</a>
        </div>
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
             
          </thead>
          <tbody>
          </tbody>
        </table>
      </div>
    </div>

    <!-- scripts -->
    <script type="text/javascript" src="../assets/bootstrap/js/jquery.js"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/google-code-prettify/prettify.js"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/bootstrap-transition.js"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/bootstrap-alert.js"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/bootstrap-modal.js"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/bootstrap-dropdown.js"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/bootstrap-scrollspy.js"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/bootstrap-tab.js"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/bootstrap-tooltip.js"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/bootstrap-popover.js"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/bootstrap-button.js"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/bootstrap-collapse.js"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/bootstrap-carousel.js"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/bootstrap-typeahead.js"></script>
    <script type="text/javascript" src="../assets/bootstrap/js/bootstrap-datepicker.js"></script>
    <script type="text/javascript">
      $('#beginTime').datepicker()
      $('#endTime').datepicker()
    </script>
  </body>
</html>