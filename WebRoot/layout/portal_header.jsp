<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>

<!DOCTYPE HTML>
<html>
<body>
	<div id="wrap_main">
		<div class="container" id="header">
			<h1>
				<a class="logo" href="#">
					<img src="assets/img/sse_logo.png">
				</a>
			</h1>
			<ul class="action">
				<li>
					<a href="#">登录</a>
				</li>
				<li>
					<a href="#">注册</a>
				</li>
			</ul>
			<ul class="top-nav" style="margin-top: 60px;">
				<li id="home">
					<span>首页</span>
				</li>
				<li id="teaching">
					<a href="#">教学</a>
				</li>
				<li id="download">
					<a href="#">科研</a>
				</li>
				<li id="download">
					<a href="#">服务器</a>
				</li>
				<li id="download">
					<a href="#">CDUG</a>
				</li>
				<li id="download">
					<a href="#">主机云</a>
				</li>
			</ul>
		</div>
	</div>
</body>
</html>