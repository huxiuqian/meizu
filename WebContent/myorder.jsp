<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<jsp:include flush="fasle" page="header.jsp" />
<title>我的订单</title>
<style type="text/css">
	 #t {
		padding-top:20px;
		
	}
	#h {
		padding-left:50px;
	}
	#s {
		padding-top:50px;
	}
	body {
	font-family: "华文细黑";
	 width: 100%;
	 height:auto;
	 background:url("img/2.jpg") no-repeat;
	 background-size: 100%;
	}
</style>
</head>
<body >
 	
    <div align="center" width="120" id="s">
		<form action="#" name="form1" method="post">
		  <input type="hidden" name="command" value="find">
			<table id="table1" class="line_table"
				style="width: 500px; margin: 0; padding: 0 ;" border="2" bgcolor="#E0E0E0">
					<tr>
						<td class="line_table" align="right" width="40%"><span
							class="left_bt2">按订单编号查询</span></td>
						<td class="line_table" align="left" width="60%"><input
							type="text" name="menuname" size="20"> <input
							type="submit" value="查询"></td>
					</tr>
					<tr>
						<td class="line_table" align="right" width="40%"><span
							class="left_bt2">按订单时间查询</span></td>
						<td class="line_table" align="left" width="60%"><input
							type="text" name="times" size="20" 
							> <input type="submit"
							value="查询"></td>
					</tr>
			</table>
		</form>
		</div>
	<div  align="center" id="t">
		<table border="1" height="20" width="900" align="center" bgcolor="#F0F0F0" valign=center  >
		
		
			<div id = "h"><h2>订单查询结果信息列表</h1></div>
			<tr bgcolor="#a1a1a1" width="20%" valign=center  >
				<th>订单号</th>
				<th>用户姓名</th>
				<th>手机名称</th>
				<th>手机单价</th>
				<th>手机数量</th>
				<th>智能电器名称</th>
				<th>智能电器单价</th>
				<th>智能电器数量</th>
				<th>配件名称</th>
				<th>配件单价</th>
				<th>配件数量</th>
				<th>收货地址</th>
				<th>订单总数量</th>
				<th>订单总金额</th>
				<th>订单时间</th>
				<th>配送状态</th>
			</tr>
			<tr align="center">
				<td>1111</td>
				<td>张三</td>
				<td>魅族</td>
				<td>2000</td>
				<td>1</td>
				<td>智能跑步机</td>
				<td>2000</td>
				<td>1</td>
				<td>耳机</td>
				<td>2000</td>
				<td>1</td>
				<td><select name="sel">
    <option value="1">山东</option>
    <option value="2">上海</option>
    <option value="3">北京</option>
    <option value="4">广州</option>
     </select>
</td>
				<td>3</td>
				<td>6000</td>
				<td>2017-01-01</td>
				<td>是</td>
			</tr>
			
			<tr align="center">
				<td>2222</td>
				<td>李四</td>
				<td>魅族</td>
				<td>2000</td>
				<td>1</td>
				<td>智能跑步机</td>
				<td>2000</td>
				<td>1</td>
				<td>耳机</td>
				<td>2000</td>
				<td>1</td>
				<td><select name="sel">
    <option value="1">山东</option>
    <option value="2">上海</option>
    <option value="3">北京</option>
    <option value="4">广州</option>
     </select>
</td>
				<td>3</td>
				<td>6000</td>
				<td>2017-01-01</td>
				<td>是</td>
			</tr>
			<tr align="center">
				<td>3333</td>
				<td>王五</td>
				<td>魅族</td>
				<td>2000</td>
				<td>1</td>
				<td>智能跑步机</td>
				<td>2000</td>
				<td>1</td>
				<td>耳机</td>
				<td>2000</td>
				<td>1</td>
				<td><select name="sel">
    <option value="1">山东</option>
    <option value="2">上海</option>
    <option value="3">北京</option>
    <option value="4">广州</option>
     </select>
</td>
				<td>3</td>
				<td>6000</td>
				<td>2017-01-01</td>
				<td>是</td>
			</tr>
			
		</table>
		
	
	</div>
</body>
</html>