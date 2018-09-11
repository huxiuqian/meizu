<%@ page language="java"  pageEncoding="utf-8"%>
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
						cellPadding="0">
						<tbody style="margin: 0; padding: 0">
							<tr>
								<td class="line_table" align="center" colspan="11" height="20"><span
									class="left_bt2">配件信息列表</span></td>
							</tr>
							<tr>
								<td class="line_table" align="center"><span
									class="left_bt2">配件名称</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">展示图片</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">类型</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">价格</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">颜色</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">长度</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">容量</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">&nbsp;</span></td>
							</tr>
							<c:forEach items="${list }" var="part">
								
								<tr>
									<td class="line_table" align="center"><a
										href="phone_update.jsp?">${part.partsname }</a></td>
									<td class="line_table" align="center"><a
										href="${pageContext.request.contextPath }${part.partsimage}"><img
											src="${pageContext.request.contextPath }${part.partsimage}" width="30" heigth="30"></a></td>
									<td class="line_table" align="center"><span
										class="left_txt">
											<c:forEach items="${partsType }" var="partstype">
												<c:if test="${partstype.partstypeid==part.partstypeid }">${partstype.partstypename}</c:if>
											</c:forEach>
										</span></td>
									<td class="line_table" align="center"><span
										class="left_txt">${part.partsprice }</span></td>
									<td class="line_table" align="center"><span
										class="left_txt">${part.partscolor }</span></td>
									<td class="line_table" align="center"><span
										class="left_txt">${part.partslength }</span></td>
									<td class="line_table" align="center"><span
										class="left_txt">${part.partsbattery }</span></td>
									<td class="line_table" align="center"><a href="AdminServlet?action=deleteParts&partsid=${part.partsid }">删除</a></td>
								</tr>
							
							
							</c:forEach>
							
					</table>
				</div>
			</td>
		</tr>
	</table>
</body>
</html>
