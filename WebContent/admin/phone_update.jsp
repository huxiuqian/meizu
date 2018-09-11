<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">  
<link href="admin/images/skin.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script src="jquery/jquery-2.2.4.min.js" type="text/javascript"></script>

</head>
<body>

	<table width="100%" height="1" border="0" cellpadding="0"
		cellspacing="0">
		<tr>
			<td valign="top" bgcolor="#F7F8F9">
				<div align="center">

					<form action="AdminServlet?action=updatePhone" method="post" name="form1">

						<input type="hidden" name="phoneid" value="${phone.phoneid }">
						<table id="table2" class="line_table"
							style="width: 100%; margin: 0; padding: 0" cellSpacing="0"
							cellPadding="0">
							<tr>
								<td class="line_table" align="center" colspan="11" height="20"><span
									class="left_bt2">修改手机信息</span></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">手机名称：</span></td>
								<td class="line_table" height="25" width="80%"><input
									type="text" name="pname" size="45" value="${phone.pname }"></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">价格：</span></td>
								<td class="line_table" height="25" width="80%"><input
									type="text" name="price" size="45" value="${phone.price }"></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">尺寸：</span></td>
								<td height="25" width="80%"><input type="text" name="size"
									size="45" value="${phone.size }"></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">颜色：</span></td>
								<td height="25" width="80%"><input type="text"
									name="color" size="45" value="${phone.color }"></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">版本：</span></td>
								<td height="25" width="80%"><input type="text"
									name="version" size="45" value="${phone.version }"></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">内存：</span></td>
								<td height="25" width="80%"><input type="text"
									name="storage" size="45" value="${phone.storage }"></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">系统：</span></td>
								<td height="25" width="80%"><input type="text"
									name="system" size="45" value="${phone.system }"></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">描&nbsp;&nbsp;&nbsp; 述：</span></td>
								<td class="line_table" height="25" width="80%"><textarea
										rows="12" name="describe" cols="100">${phone.describe }</textarea></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">网络版本：</span></td>
								<td class="line_table" height="25" width="80%">
								<select name="networkid">
									<c:forEach items="${list }" var="network" >
										<c:if test="${network.networkid==phone.networkid }">
											<option value="${network.networkid }" selected="selected">${network.netname }</option>
										</c:if>
										<c:if test="${network.networkid!=phone.networkid }">
											<option value="${network.networkid }">${network.netname }</option>
										</c:if>
									</c:forEach>
								</select></td>
							</tr>

							<tr>
								<td class="line_table" height="25" align="right" width="20%"><span
									class="left_bt2">图片：</span></td>
								<td class="line_table" width="80%" align="left"><img style="width:150px; height:140px;"
									src="${pageContext.request.contextPath }${phone.imgpath }"></td>
							</tr>
							<tr>
								<td class="line_table" height="25" align="center" colspan="2"><input
									type="submit" value="修改"></td>
							</tr>
						</table>
					</form>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>