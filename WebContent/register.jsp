<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>魅族注册</title>
<link href="css/register.css" rel="stylesheet" />
<script src="jquery/jquery-2.2.4.min.js" type="text/javascript"></script>
<style type="text/css">
.c5 {
	position: absolute;
	top: 200px;
	left: 800px;
	width: 400px;
	height: 300px;
}

.c6 {
	font-family: 黑体;
	font-size: 20px;
	margin-top: 20px;
}

.c7 {
	height: 40px;
	width: 200px;
	border-style: solid;
	border-color: gray;
	margin-top: 20px;
	font-size: 20px
}
</style>
<script src="jquery/jquery-2.2.4.min.js" type="text/javascript"></script>
<script type="text/javascript">
function send() {
	var telphone = $("#telphone").val();
	/* alert(telphone); */
	if(!(/^1[3|4|5|7|8][0-9]\d{4,8}$/.test(telphone))){ 
		 alert("手机号不合法");
		 return false;
	}
	$.ajax({
		url : "${pageContext.request.contextPath}/SmsCodeServlet",
		type : "POST",
		async : "true",
		data : {
			"telphone" : telphone,
		},
		dataType : "json",
		success : function(data) {
			if (data.res == 1) {
				alert("验证码已发送");
			}
		}
	});
	return false;
}

	function regist() {
		var telphone = $("#telphone").val();
		var word = $("#word").val();
		if (telphone=="") {
			alert("请输入手机号");
			return false;
		}
		if(!(/^1[3|4|5|7|8][0-9]\d{4,8}$/.test(telphone))){ 
			 alert("手机号不合法");
			 return false;
		}
		if (word=="") {
			alert("请输入验证码");
			return false;
		}
		
		$.ajax({
			url : "RegisterServlet",
			type : "POST",
			async : "true",
			data : {
				"telphone" : telphone,
				"word" : word
			},
			dataType : "json",
			success : function(data) {
				if (data.res == 1) {
					alert("注册成功");
					window.location.replace("index.jsp");
				} else if (data.res==2) {
					alert("验证码错误");
				} else if (data.res==3) {
					alert("请先获取验证码");
				} else if (data.res==0) {
					alert("该手机号已注册，请直接登录");
				}
			}
		});
		return false;
	}
	
</script>
</head>
<body>
	<div id="Layer1"
		style="position: absolute; width: 100%; height: 100%; z-index: -1">
		<img src="img/bg.png" height="100%" width="100%" />
	</div>
	<div id="c">
		<div class="c1">
			<a href="index.jsp"><span class="c1_logo">MEIZU</span></a> <a
				href="input.jsp"> <span class="c1_t1">登录</span></a> <span class="c1_t2">|</span>
			<a href="#"><span class="c1_t3">注册</span></a>
			<div class="c1_r"></div>
		</div>
	</div>
	<div class="c5">

		<center>
			<div class="tab-title">
				<a class="linkABlue" id="toAccountLogin"
					style="font-size: 30px;color="blue">手机号注册</a>
			</div>
		</center>
		<form id="form" name="form" method="post">
			<center>
				<span class="c6">手机号：</span> <input type="text" name="telphone"
					id="telphone" class="c7" /> <input type="button" value="发送验证码"
					onclick="send()" /><br /> <span class="c6">验证码：</span> <input
					type="text" name="word" id="word" class="c7" /><input
					type="button" value="　　　　　　" style="background: none; border: none" /><br /> <br /> <span
					id="span"></span> <font size="2" color="444444">点击"注册"表示已阅读并接受《Flyme服务协议条款》</font>
				<br /> <br /> <input type="button" value="注册"
					style="height: 40px; width: 300px; font-size: 25px; color: blue" onclick="regist()">
			</center>
		</form>
	</div>
</body>
</html>