<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>修改个人信息</title>
<link href="css/register.css" rel="stylesheet" />
<link rel="stylesheet" href="bootstrap-3.3.7-dist/css/bootstrap.css">
<link rel="stylesheet" href="bootstrapvalidator/css/bootstrapValidator.css">
<link rel="stylesheet" href="bootstrap-datetimepicker/css/bootstrap-datetimepicker.css">
<script src="jquery/jquery-2.2.4.min.js" type="text/javascript"></script>
<script src="bootstrap-3.3.7-dist/js/bootstrap.min.js" type="text/javascript"></script>
<script src="bootstrap-datetimepicker/js/bootstrap-datetimepicker.js" type="text/javascript"></script>
<script src="bootstrap-datetimepicker/js/locales/bootstrap-datetimepicker.zh-CN.js" type="text/javascript"></script>
<!-- 表单验证 -->
<script src="bootstrapvalidator/js/bootstrapValidator.js" type="text/javascript"></script>
<style type="text/css">
  .c2{
     position: absolute;
     top:50px;
     left:500px;
     width: 400px;
     height: 540px;
     
  }
  .c3{
    font-family: 黑体;
    font-size: 25px;
    margin-top: 20px;
  }
  .c4{
    height: 30px;
    width: 200px;
    border-style: solid;
    border-color: gray;
    margin-top: 20px;    
    font-size: 20px;
  }

</style>
<script type="text/javascript">
	$(function(){
		  validateForm();
		 

		 
		 $(".form_datetime").datetimepicker({
		        format: 'yyyy-mm-dd',
		        minView:'month',
		        language: 'zh-CN',
		        autoclose: true,//选中自动关闭
		        startDate:'1900-01-01',
		        todayBtn: true//显示今日按钮
		    });
		 
	});
	
	function validateForm(){
		// 验证表单
			$("#registerform").bootstrapValidator({
			
			    message: 'This value is not valid',
				submitButtons: 'button[type="button"]',
		        feedbackIcons: {/*输入框不同状态，显示图片的样式*/
		            valid: 'glyphicon glyphicon-ok',
		            invalid: 'glyphicon glyphicon-remove',
		            validating: 'glyphicon glyphicon-refresh'
		        },
		        fields: {/*验证*/
		        	username: {
		                message: 'The username is not valid',
		                validators: {
		                	notEmpty: {
		                        message: '用户名不能为空'
		                    },
		                    stringLength: {
		                        min: 6,
		                        max: 30,
		                        message: '用户名长度必须在6到30之间'
		                    },
		                    regexp: {
		                        regexp: /^[a-zA-Z0-9_\.]+$/,
		                        message: '用户名不合法'
		                    }
		                }
		            },
		            password: {
		                message: 'The password is not valid',
		                validators: {
		                	notEmpty: {
		                        message: '密码不能为空'
		                    },
		                    regexp: {
		                    	regexp: /^[a-zA-Z0-9_\.]+$/,
		                    	message: '密码不合法, 请重新输入'
		                    },
		                    stringLength: {
		                        min: 6,
		                        max: 30,
		                        message: '密码长度必须在6到30之间'
		                    }
		                }
		            },
		           password2: {
		            	messaage: 'The two password must be consistent',
		            	validators : {
		            		notEmpty: {
		                   		message: '确认密码不能为空'
		                	},
		                    identical: {
		                    	field: 'password',
		                    	message: '两次密码必须一致'
		                    }
		            	}
		            },
		            age: {
		                validators: {
		                	notEmpty: {
		                   		message: '年龄不能为空'
		                	}
		                }
		            },
		            email: {
		                validators: {
		                	notEmpty: {
		                   		message: '邮箱不能为空'
		                	},
		                    emailAddress: {
		                        message: '邮箱格式输入错误'
		                    }
		                }
		            },
		            qq: {
		                 message: 'The qq is not valid',
		                 validators: {
		                     notEmpty: {
		                         message: 'qq不能为空'
		                     },
		                     regexp: {
		                         regexp: /^[0-9]+$/,
		                         message: '请输入正确的qq号码'
		                     }
		                 }
		             },
		             realname: {
		                 message: 'The name is not valid',
		                 validators: {
		                     notEmpty: {
		                         message: '姓名不能为空'
		                     }
		                 }
		             },
		             residence: {
		                 message: 'The city is not valid',
		                 validators: {
		                     notEmpty: {
		                         message: '城市不能为空'
		                     }
		                 }
		             }
		        }
		    });
		
	}
	
	function modify(){
		// 异步注册用户
		var valide = $("#registerform").data('bootstrapValidator');
		valide.validate();
		if(!valide.isValid()){
			return ;
		}
		$.ajax({
			url : "ModifyServlet", 
			type : "POST",
			async : "true",
			data : $("form").serializeArray(),
			dataType : "json",
			error:function(){
				alert("error");
			},
			success : function(data) {
				if(data.res == 1){
					alert("修改成功");
					window.location.href="index.jsp";
				}else{
					alert("修改失败");
					window.location.reload();
				}
			}
		});
	}
</script>
</head>
<body>
<div id="Layer2" style="position:absolute; width:100%; height:100%; z-index:-1">    
<img src="img/bg.png" height="100%" width="100%"/>    
</div>
<div id="c">
<div class="c1">
   <a href="index.jsp"><span class="c1_logo">MEIZU</span></a> 
    <a href="input.jsp">        <span class="c1_t1">登录</span></a>
	                    <span class="c1_t2">|</span>
	<a href="register.jsp">        <span class="c1_t3">注册</span></a>
   <div class="c1_r">
   
   </div>
</div>
</div>
<div class="container">		
		<div class="row">
			<div class="col-sm-offset-3 col-sm-6">
				<h3>修改个人信息</h3>
			</div>
		</div>
		<form class="form-horizontal col-sm-offset-3" id="registerform" method="post">
			<div class="form-group">
				<label for="username" class="col-sm-2 control-label">账号：</label>
				<div class="col-sm-4">
					<input type="hidden" value="regist" name="action"></input>
					<input type="text" class="form-control" name="username" placeholder="请输入账号" value="${user.username }">
				</div>
			</div>
			<div class="form-group">
				<label for="password" class="col-sm-2 control-label">密码：</label>
				<div class="col-sm-4">
					<input type="password" class="form-control" name="password" placeholder="请输入密码">
				</div>
			</div>
			<div class="form-group">
				<label for="password2" class="col-sm-2 control-label">确认密码：</label>
				<div class="col-sm-4">
					<input type="password" class="form-control" name="password2" placeholder="请确认密码">
				</div>
			</div>
			<div class="form-group">
				<label for="realname" class="col-sm-2 control-label">真实姓名：</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" name="realname" placeholder="请输入真实姓名" value="${user.realname }">
				</div>
			</div>
			<div class="form-group">
				<label for="sex" class="col-sm-2 control-label">性别：</label>
				<div class="col-sm-4">
					<label class="radio-inline">
				        <input type="radio" name="sex" value="男" checked> 男
					</label>
				    <label class="radio-inline">
				        <input type="radio" name="sex" value="女"> 女
				    </label>
				</div>
			</div>
			
			<div class="form-group">
				<label for="birthday" class="col-sm-2 control-label">年龄：</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" name="age" placeholder="请输入年龄" value="${user.age }">
                </div>
			</div>
			<div class="form-group">
				<label for="city" class="col-sm-2 control-label">现居地：</label>
				<div class="col-sm-4">
					<input type="text" class="form-control" name="residence" placeholder="请输入所在城市" value="${user.residence }">
				</div>
			</div>
			<div class="form-group">
				<label for="email" class="col-sm-2 control-label">邮箱：</label>
				<div class="col-sm-4">
					<input type="email" class="form-control" name="email" placeholder="请输入邮箱" value="${user.email }">
				</div>
			</div>
			
			<div class="form-group has-error">
				<div class="col-sm-offset-2 col-sm-4 col-xs-6 ">
					<span class="text-warning"></span>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-4 col-xs-12">
					<button type="button" class="btn btn-success btn-block" onclick="modify();">修改</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>