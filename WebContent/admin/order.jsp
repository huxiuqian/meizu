<%@page import="java.util.*"%>
<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
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


				<div align="center">
					<table id="table2" class="line_table"
						style="width: 100%; margin: 0; padding: 0" cellSpacing="0"
						cellPadding="0" border="1">
						<tbody style="margin: 0; padding: 0">
							<tr>
								<td class="line_table" align="center" colspan="12"><span
									class="left_bt2">销售订单查询结果信息列表</span></td>
							</tr>
							<tr>
								<td class="line_table" align="center"><span
									class="left_bt2">用户ID</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">真实姓名</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">联系方式</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">派送地址</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">手机名称</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">订购数量</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">单价(元)</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">智能电器名称</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">订购数量</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">单价(元)</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">配件名称</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">订购数量</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">单价(元)</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">合计(元)</span></td>
								<td class="line_table" align="center"><span
									class="left_bt2">订购时间</span></td>
								<!-- <td class="line_table" align="center"><span
									class="left_bt2">是否派送</span></td>
								<td class="line_table" align="center" colspan="2"><span
									class="left_bt2">确认订单</span></td> -->
							</tr>
							<c:forEach items="${orderList }" var="ol">
								<tr>
									<td class="line_table" align="center"><span
										class="left_txt">${ol.userid }</span></td>
									<td class="line_table" align="center"><span
										class="left_txt">${ol.realname }</span></td>
									<td class="line_table" align="center"><span
										class="left_txt">${ol.tel }</span></td>
									<td class="line_table" align="center"><span
										class="left_txt">${ol.address }</span></td>
									<td class="line_table" align="center"><span
										class="left_txt"><c:if test="${ol.pname != null }">${ol.pname }</c:if>
										<c:if test="${ol.pname == null }">无</c:if></span></td>
									<td class="line_table" align="center"><span
										class="left_txt"><c:if test="${ol.phonecount != null }">${ol.phonecount }</c:if>
										<c:if test="${ol.phonecount == null }">0</c:if></span></td>
									<td class="line_table" align="center"><span
										class="left_txt"><c:if test="${ol.price != null }">${ol.price }</c:if>
										<c:if test="${ol.price == null }">0</c:if></span></td>
									<td class="line_table" align="center"><span
										class="left_txt"><c:if test="${ol.healthname != null }">${ol.healthname }</c:if>
										<c:if test="${ol.healthname == null }">无</c:if></span></td>
									<td class="line_table" align="center"><span
										class="left_txt"><c:if test="${ol.healthcount != null }">${ol.healthcount }</c:if>
										<c:if test="${ol.healthcount == null }">0</c:if></span></td>
									<td class="line_table" align="center"><span
										class="left_txt"><c:if test="${ol.healthprice != null }">${ol.healthprice }</c:if>
										<c:if test="${ol.healthprice == null }">0</c:if></span></td>
									<td class="line_table" align="center"><span
										class="left_txt"><c:if test="${ol.partsname != null }">${ol.partsname }</c:if>
										<c:if test="${ol.partsname == null }">无</c:if></span></td>
									<td class="line_table" align="center"><span
										class="left_txt"><c:if test="${ol.partscount != null }">${ol.partscount }</c:if>
										<c:if test="${ol.partscount == null }">0</c:if></span></td>
									<td class="line_table" align="center"><span
										class="left_txt"><c:if test="${ol.partsprice != null }">${ol.partsprice }</c:if>
										<c:if test="${ol.partsprice == null }">0</c:if></span></td>
									<td class="line_table" align="center"><span
										class="left_txt">${ol.orderprice }</span></td>
									<td class="line_table" align="center"><span
										class="left_txt">${ol.ordertime }</span></td>
									
									<!-- 
								<td class="line_table" align="center"><a
									href="#">确认</a></td>
								<td class="line_table" align="center"><a
									href="#">取消</a></td> -->
								</tr>
							</c:forEach>

							<tr>
								<td class="line_table" align="center" colspan="12" height="20">
									<span class="left_bt2">第1页 &nbsp;&nbsp;共4页 </span>&nbsp;&nbsp;
									<a href="#">[首页]</a> <a href="#">[尾页]</a>&nbsp;&nbsp; <a
									href="#">[上一页]</a> <a href="#">[下一页]</a>

								</td>
							</tr>
					</table>
				</div>




			</td>
		</tr>
	</table>
</body>
</html>