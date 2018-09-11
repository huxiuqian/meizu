<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>配件</title>
<link href="css/accessory.css" rel="stylesheet" />
</head>

<body>
	<!-----------------------------导航------------------------------>
	<%@ include file="header.jsp"%>
	
	<div id="c2">
		<div class="c2_l">
			<div class="c2_l1">
				<a href="accessory-1.jsp" target="main"><span class="c2_l_t">配件类别</span></a>
			</div>
			<div class="c2_l1">
				<a href="accessory-2.jsp" target="main"><span class="c2_l_t">耳机音箱</span></a>
			</div>
			<div class="c2_l1">
				<a href="accessory-3.jsp" target="main"><span class="c2_l_t">智能健康</span></a>
			</div>
			<div class="c2_l1">
				<a href="accessory-4.jsp" target="main"><span class="c2_l_t">智能生活</span></a>
			</div>
			<div class="c2_l1">
				<a href="accessory-5.jsp" target="main"><span class="c2_l_t">智能出行</span></a>
			</div>
			<div class="c2_l1">
				<a href="accessory-6.jsp" target="main"><span class="c2_l_t">数据线</span></a>
			</div>
			<div class="c2_l1">
				<a href="accessory-7.jsp" target="main"><span class="c2_l_t">电源适配器</span></a>
			</div>
			<div class="c2_l1">
				<a href="accessory-8.jsp" target="main"><span class="c2_l_t">手机壳套</span></a>
			</div>
			<div class="c2_l1">
				<a href="accessory-9.jsp" target="main"><span class="c2_l_t">贴膜</span></a>
			</div>
			<div class="c2_l1">
				<a href="accessory-10.jsp" target="main"><span class="c2_l_t">后盖</span></a>
			</div>
			<div class="c2_l1">
				<a href="accessory-11.jsp" target="main"><span class="c2_l_t">个性化配件</span></a>
			</div>
		</div>
		<div class="c2_r">
			<iframe src="accessory-1.jsp" name="main"
				style="width: 1000px; height: 800px;"> </iframe>
		</div>
	</div>
	
	<!-----------------------------底部导航-------------------------->
	<%@ include file="footer.jsp"%>
	
</body>
</html>