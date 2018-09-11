<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.css">
<script src="jquery/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"
	type="text/javascript"></script>
<link href="css/base.css" rel="stylesheet">
</head>

<body>
	<div id="top">
		<div class="top1">
			<div class="top1_l">
				<a href="index.jsp"> <span class="top1_l_logo STYLE11">MEIZU</span>
				</a>
			</div>
			<div class="top1_r">
				<ul>
					<li><a href="shop.jsp">在线商店</a></li>
					<li><a href="phone.jsp?p=1">PRO</a></li>
					<li><a href="phone.jsp?p=4">MX</a></li>
					<li><a href="phone.jsp?p=3">魅蓝</a></li>
					<li><a href="accessory.jsp">智能硬件</a></li>
					<!-- <li><a href="#">服务</a></li> -->
					<c:if test="${sessionScope.user == null}">
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#"> <img
								src="img/base/log-default-avatar.png"/>
						</a>
							<ul class="dropdown-menu">
								<li><a href="input.jsp">登录</a></li>
								<li><a href="register.jsp">注册</a></li>
							</ul></li>
					</c:if>
					<c:if test="${sessionScope.user != null}">
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#"> <img
								src="img/base/log-default-avatar.png" alt="log" /><span
								class="caret"></span>
						</a>
							<ul class="dropdown-menu">
								<li><a href="modify.jsp">个人中心</a></li>
								<li><a href="myorder.jsp">我的订单</a></li>
								<li><a href="">退出</a></li>
							</ul></li>
					</c:if>
				</ul>
			</div>
		</div>
	</div>

</body>
</html>