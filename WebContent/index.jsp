<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>魅族官网-魅族手机官方网站</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.css">
<script src="jquery/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js"
	type="text/javascript"></script>
<link href="css/main.css" rel="stylesheet" />
</head>

<body>

	<!-----------------------------------导航----------------------------------->
	<div id="c1">
		<div class="c1_l">
			<span class="c1_l_logo STYLE11">MEIZU</span>
		</div>
		<div class="c1_r">
			<ul>
					<li><a href="shop.jsp">在线商店</a></li>
					<li><a href="phone.jsp?p=1">PRO</a></li>
					<li><a href="phone.jsp?p=4">MX</a></li>
					<li><a href="phone.jsp?p=3">魅蓝</a></li>
					<li><a href="accessory.jsp">智能硬件</a></li>
					<c:if test="${sessionScope.user == null}">
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#"> <img
								src="img/base/log-default-avatar.png"/>${sessionScope.user.username}
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
	<!-----------------------------------内容1----------------------------------->
	<div id="c2">
		<div class="c2_l" >
			<div class="c2_l_l">
				<a href="pro5.jsp"><span class="c2_l_l_t STYLE11">立即购买</span> </a>
			</div>
			<div class="c2_l_r">
				<a href="pro5.jsp"><span class="c2_l_r_t STYLE11">了解详情</span> </a>
			</div>
		</div>
	</div>

	<!-----------------------------------内容2----------------------------------->
	<div id="c3">
		<div class="c3_l">
			<a href="#"><img src="img/index/1.png"></a>
		</div>

		<div class="c3_c">
			<a href="#"><img src="img/index/2.png"></a>
		</div>

		<div class="c3_r">
			<a href="xl.jsp"><img src="img/index/3.png"></a>
		</div>
	</div>

	<!-----------------------------------内容3----------------------------------->
	<div id="box">
		<div class="box_1">
			<div class="box_1_1">帮助说明</div>
			<div class="box_1_2">
				<a href="#">支付方式</a>
			</div>
			<div class="box_1_3">
				<a href="#">配送说明</a>
			</div>
			<div class="box_1_4">
				<a href="#">售后服务</a>
			</div>
			<div class="box_1_5">
				<a href="#">付款帮助</a>
			</div>
		</div>
		<div class="box_2">
			<div class="box_2_1">Flyme OS</div>
			<div class="box_2_2">
				<a href="#">云服务</a>
			</div>
			<div class="box_2_3">
				<a href="#">固件下载</a>
			</div>
			<div class="box_2_4">
				<a href="#">软件商店</a>
			</div>
			<div class="box_2_5">
				<a href="#">查找手机</a>
			</div>
		</div>
		<div class="box_3">
			<div class="box_3_1">关于我们</div>
			<div class="box_3_2">
				<a href="#">关注魅族</a>
			</div>
			<div class="box_3_3">
				<a href="#">加入我们</a>
			</div>
			<div class="box_3_4">
				<a href="#">联系我们</a>
			</div>
			<div class="box_3_5">
				<a href="#">法律声明</a>
			</div>
		</div>
		<div class="box_4">
			<div class="box_4_1">关注我们</div>
			<div class="box_4_2">
				<a href="#">新浪微博</a>
			</div>
			<div class="box_4_3">
				<a href="#">腾讯微博</a>
			</div>
			<div class="box_4_4">
				<a href="#">QQ空间</a>
			</div>
			<div class="box_4_5">
				<a href="#">官方微信</a>
			</div>
		</div>
		<div class="box_5">
			<div class="box_5_1">24小时全国服热线</div>
			<div class="box_5_2">400-788-3333</div>
			<div class="box_5_3">
				<a href="#">24小时在线客服</a>
			</div>
		</div>
	</div>

	<!-----------------------------------页脚----------------------------------->
	<div id="footer">
		<span class="footer_t">@2015 Meizu Telecom Equipment Co., Ltd.
			All rights reserved.备案号：粤ICP备13003602号-2 经营许可证编号：粤B2-20130198 营业执照</span>
	</div>
	
</body>
</html>