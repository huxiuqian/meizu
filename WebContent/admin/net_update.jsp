<%@page import="com.meizu.po.NetWork"%>
<%@page import="com.meizu.service.impl.AdminServiceImpl"%>
<%@page import="com.meizu.service.AdminService"%>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%
	AdminService as = new AdminServiceImpl();
	String name = null;
	int id = 0;
	if (request.getParameter("id") != null) {
		 id = Integer.parseInt(request.getParameter("id"));
		name = as.findNetWorkById(id).getNetname();
	}
%>
<html>
<head>
<script language="JavaScript">
	function check11() {

		if (document.form1.netname.value == "") {
			alert("网络类别不能为空!");
			document.form1.name.focus();
			return false;
		}

	}
</script>


<link href="images/skin.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
				<p>修改网络类别</p>

				<div align="center">

					<form action="<%=path%>/NetModifyServlet?action=update&id=<%=id %>"
						method="post" name="form1" onSubmit="return check11()">


						<table id="table2" class="line_table"
							style="width: 100%; margin: 0; padding: 0" cellSpacing="0"
							cellPadding="0">

							<tr>
								<td class="line_table" height="25" align="right" width="40%"><span
									class="left_bt2">网络类型：</span></td>
								<td class="line_table" height="25" width="60%"><input
									type="text" name="netname" size="45" value="<%=name%>"></td>
							</tr>

							<tr>
								<td class="line_table" height="25" align="center" colspan="2">
									<input type="submit" value="修改">
								</td>
							</tr>
						</table>
					</form>
				</div>


			</td>


		</tr>
	</table>
</body>
</html>
