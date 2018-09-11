<%@page import="org.apache.commons.codec.binary.Base32"%>
<%@ page language="java"  pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
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
				<div align="center">
					<table id="table2" class="line_table"
						style="width: 100%; margin: 0; padding: 0" cellSpacing="0"
						cellPadding="0" border="1">
						<tbody style="margin: 0; padding: 0">
							<tr>
								<td class="line_table" align="center" colspan="11" height="20"><span
									class="left_bt2">智能电器列表</span></td>
							</tr>
							<tr>
								<td class="line_table" align="center"><span
									class="left_bt2">智能电器名称</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">展示图片</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">类型</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">价格</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">颜色</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">功能</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">容量</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">&nbsp;</span></td>
							</tr>
							<c:forEach items="${healthList }" var="hl">
							<tr>
								<td class="line_table" align="center"><a
									href="phone_update.jsp?">${hl.healthname }</a></td>
								<td class="line_table" align="center"><a
									href="${pageContext.request.contextPath }${hl.healthimage }"><img
										src="${pageContext.request.contextPath }${hl.healthimage }" width="30" heigth="30"></a></td>
										
								<td class="line_table" align="center"><span
									class="left_txt">${hl.healthtypename }</span></td>
								<td class="line_table" align="center"><span
									class="left_txt">${hl.healthprice }</span></td>
								<td class="line_table" align="center"><span
									class="left_txt">${hl.healthcolor }</span></td>
								<td class="line_table" align="center"><span
									class="left_txt">${hl.healthfunction }</span></td>
								<td class="line_table" align="center"><span
									class="left_txt">无</span></td>
								<td class="line_table" align="center"><a href="${pageContext.request.contextPath }/HealthModifyServlet?action=delete&id=${hl.healthid }">删除</a></td>
							</tr>
							</c:forEach>
							
							<tr>
								<td class="line_table" align="center" colspan="11" height="20">
								<span class="left_bt2">第1页
										&nbsp;&nbsp;共1页
								</span>&nbsp;&nbsp; 
								    <a href="#">[首页]</a>
								    <a href="#">[尾页]</a>&nbsp;&nbsp; 
								    <a href="#%>">[上一页]</a>
									<a href="#">[下一页]</a>
								</td>
							</tr>
					</table>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>
