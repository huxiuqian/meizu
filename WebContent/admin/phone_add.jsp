<%@ page language="java" import="java.util.*" pageEncoding="utf-8"
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>
<html>
<head>
<base href="<%=basePath%>">  
<link href="admin/images/skin.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="jquery/jquery-2.2.4.min.js" type="text/javascript"></script>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #EEF2FB;
}
-->
</style>
</head>
<body>

	<table width="100%" height="1" border="0" cellpadding="0"
		cellspacing="0">
		<tr>
			<td valign="top" bgcolor="#F7F8F9">

				<p>添加新手机</p>

				<div align="center">

					<form action="AdminServlet?action=addPhone" method="post" name="form1"
						 enctype="multipart/form-data">


						<table id="table2" class="line_table"
							style="width: 100%; margin: 0; padding: 0" cellSpacing="0"
							cellPadding="0">
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">手机名称：</span></td>
								<td class="line_table" height="25" width="80%"><input
									type="text" name="pname" size="45" value=""></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">价格：</span></td>
								<td class="line_table" height="25" width="80%"><input
									type="text" name="price" size="45" value=""></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">尺寸：</span></td>
								<td height="25" width="80%"><input type="text" name="size"
									size="45" value=""></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">颜色：</span></td>
								<td height="25" width="80%"><input type="text"
									name="color" size="45" value=""></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">版本：</span></td>
								<td height="25" width="80%"><input type="text"
									name="version" size="45" value=""></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">内存：</span></td>
								<td height="25" width="80%"><input type="text"
									name="storage" size="45" value=""></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">系统：</span></td>
								<td height="25" width="80%"><input type="text"
									name="system" size="45" value=""></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">描&nbsp;&nbsp;&nbsp; 述：</span></td>
								<td class="line_table" height="25" width="80%"><textarea
										rows="12" name="describe" cols="100"></textarea></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">网络版本：</span></td>
								<td class="line_table" height="25" width="80%">
								<select name="networkid">
									<c:forEach items="${list }" var="network" >
										<option value="${network.networkid }">${network.netname }</option>
									</c:forEach>
								</select></td>
							</tr>

							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">上传图片：</span></td>
								<td class="line_table" height="25" width="80%"><input
									type="file" name="img" size="50"></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="center" colspan="2"><input
									type="submit" value="添加"></td>
							</tr>
						</table>
					</form>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>
