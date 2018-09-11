<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<html>
<head>
<link href="images/skin.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<html xmlns="http://www.w3.org/1999/xhtml">
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

<script type="text/javascript">


</script>
</head>

<body>
	<table width="100%" height="1" border="0" cellpadding="0"
		cellspacing="0">
		<tr>
			<td valign="top" bgcolor="#F7F8F9">
				<div align="center">
					<table id="table2" class="line_table"
						style="width: 100%; margin: 0; padding: 0" cellSpacing="0"
						cellPadding="0" border="1">
						<tbody style="margin: 0; padding: 0">
							<tr>
								<td class="line_table" align="center" colspan="8" height="20">
									<span class="left_bt2">类别信息列表</span>
								</td>
							</tr>
							<tr>
								<td class="line_table" align="center" width="30%"><span
									class="left_bt2">网络ID</span></td>
								<td class="line_table" align="center" width="30%"><span
									class="left_bt2">网络名称</span></td>
								<td class="line_table" align="center" width="20%">操作</td>
								<td class="line_table" align="center" width="20%">操作</td>
							</tr>
							<c:forEach items="${netList }" var="net">
							<tr>
								<td class="line_table" align="center" width="30%"><span
									class="left_txt">${net.networkid }</span></td>
								<td class="line_table" align="center" width="30%"><span
									class="left_txt">${net.netname }</span></td>
								<td class="line_table" align="center" width="20%"><a
									href="<%=path %>/NetModifyServlet?action=delete&id=${net.networkid }" target="main">删除</a></td>
								<td class="line_table" align="center" width="20%"><a
									href="admin/net_update.jsp?id=${net.networkid }" target="main">修改</a></td>
							</tr>
							</c:forEach>
					</table>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>
