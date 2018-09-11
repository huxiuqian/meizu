<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>
<html>
<head>
<base href="<%=basePath%>">  
<link href="admin/images/skin.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
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
<script language="JavaScript">
</script>
</head>
<body>

	<table width="100%" height="1" border="0" cellpadding="0"
		cellspacing="0">
		<tr>
			<td valign="top" bgcolor="#F7F8F9">

				<p>添加新手机</p>

				<div align="center">

					<form action="AdminServlet?action=addPart" method="post" name="form1"
						 enctype="multipart/form-data">


						<table id="table2" class="line_table"
							style="width: 100%; margin: 0; padding: 0" cellSpacing="0"
							cellPadding="0">
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">配件名称：</span></td>
								<td class="line_table" height="25" width="80%"><input
									type="text" name="partsname" size="45" value=""></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">价格：</span></td>
								<td class="line_table" height="25" width="80%"><input
									type="text" name="partsprice" size="45" value=""></td>
							</tr>
							
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">颜色：</span></td>
								<td height="25" width="80%"><input type="text"
									name="partscolor" size="45" value=""></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">长度：</span></td>
								<td height="25" width="80%"><input type="text" name="partslength"
									size="45" value=""></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">容量：</span></td>
								<td height="25" width="80%"><input type="text" name="partsbattery"
									size="45" value=""></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">类型</span></td>
								<td class="line_table" height="25" width="80%">
								<select name="partstypeid">
									<c:forEach items="${list }" var="partstype">
										<option value="${partstype.partstypeid }">${partstype.partstypename }</option>
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
