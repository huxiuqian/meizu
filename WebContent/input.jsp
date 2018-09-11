<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>魅族登录</title>
<link href="css/input.css" rel="stylesheet" />
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
<script type="text/javascript">
	function us()
	{
		eval("menu_item1.style.display=\"\";");
		eval("menu_item2.style.display=\"none\";");
	}
	function ph()
	{
		eval("menu_item2.style.display=\"\";");
		eval("menu_item1.style.display=\"none\";");
	}
	
	function send() {
		var telphone = $("#telphone").val();
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
	
	function login1() {
		var username = $("#username").val();
		var password = $("#password").val();
		
		if (username=="") {
			alert("用户名不能为空！");
			return false;
		}
		if(username.length<6||username.length>30) {
			alert("用户名必须在6-30位之间");
			return false;
		}
		if (password=="") {
			alert("密码不能为空！");
			return false;
		}
		if(password.length<6||password.length>30) {
			alert("密码必须在6-30位之间");
			return false;
		}
		$.ajax({
			url : "${pageContext.request.contextPath}/UserNameLoginServlet",
			type : "POST",
			async : "true",
			data : {
				"username" : username,
				"password" : password
			},
			dataType : "json",
			success : function(data) {
				/* alert(111111); */
				if (data.res == 1) {
					alert("登录成功");
					window.location.replace("index.jsp");
				} else if (data.res == 0) {
					alert("用户名或密码错误，请重新输入");
				}
			}
		});

		return false;
	}
	
	function login2() {
		var telphone = $("#telphone").val();
		var word = $("#word").val();
		if (telphone=="") {
			alert("请输入手机号");	
			return false;
		}
		if (word=="") {
			alert("请输入验证码");
		}
		
		if(word.length!=6) {
			alert("验证码必须是6位");
			return false;
		}
		$.ajax({
			url : "${pageContext.request.contextPath}/TelLoginServlet",
			type : "POST",
			async : "true",
			data : {
				"telphone" : telphone,
				"word" : word
			},
			dataType : "json",
			success : function(data) {
				alert(11111);
				alert(data.res);
				if (data.res == 1) {
					alert("登录成功");
					window.location.replace("index.jsp");
				} else if (data.res==2) {
					alert("验证码错误");
				} else if (data.res==3) {
					alert("请先获取验证码");
				} else if (data.res==0) {
					alert("该手机号没有匹配的账户，请先注册");
					window.location.replace("register.jsp");
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
				href="#"> <span class="c1_t1">登录</span></a> <span class="c1_t2">|</span>
			<a href="register.jsp"><span class="c1_t3">注册</span></a>
			<div class="c1_r"></div>
		</div>
	</div>

	<div class="c5">

		<center>
			<div class="tab-title">
				<a class="linkABlue" id="toAccountLogin" style="font-size: 30px"
					href="javascript:us()">账号登录</a> <span class="register-line"
					style="font-size: 30px">||</span> <a class="linkAGray"
					id="toVCodeLogin" style="font-size: 30px" href="javascript:ph()">验证码登录</a>
			</div>
		</center>
		<form style="display: ''" id="menu_item1" name="form1"
			method="post">
			<center>
				<span class="c6">用户名：</span> <input type="text" name="username" id="username"
					class="c7" /><br /> <span class="c6">密码：&nbsp;&nbsp;</span> <input
					type="password" name="password" id="password" class="c7" /><br /> <br /> <input
					type="checkbox" name="checkbox1" value="1"><font size="2">记住密码</font><br />
				<br /> <input type="image" src="img/login1.png"
					style="height: 40px; width: 300px" name="img" onclick="login1()">
			</center>
		</form>
		<form style="display: none" id="menu_item2" name="form2"
			method="post">
			<center>
				<span class="c6">手机号：</span> <input type="text" name="telphone"
					id="telphone" class="c7" /><br /> <span class="c6">验证码：</span> <input
					type="text" name="word" id="word" class="c7" /><br /> <br /> <input
					type="button" value="发送验证码" onclick="send()" /><br /> <br /> <input
					type="image" src="img/login1.png"
					style="height: 40px; width: 300px" name="img" onclick="login2()">
			</center>
		</form>
	</div>
</body>
</html>