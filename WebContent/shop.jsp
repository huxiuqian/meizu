<%@page import="com.meizu.po.Phone"%>
<%@page import="java.util.List"%>
<%@page import="com.meizu.dao.impl.PhoneDaoImpl"%>
<%@page import="com.meizu.dao.PhoneDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>在线商店</title>
<link href="css/shop.css" rel="stylesheet">
</head>

<body>
<%
	PhoneDao pd = new PhoneDaoImpl();
	List<Phone> phone = pd.selectPhone();

%>
	<!-----------------------------------导航----------------------------------->
	<%@ include file="header.jsp"%>

	<!-----------------------------------内容1----------------------------------->
	<div id="c2">
		<div class="c2_top">
		<%
			int a = 1;
			for( int i = phone.size()-1; i > phone.size()-6; i--){
		%>
			<a href="phone.jsp?p=<%=i%>"><div class="c2_top_<%=a%>"></div></a>
		<%
			a++;
			}
		%>		
			<a href="accessory.jsp"><div class="c2_top_6"></div></a>
		</div>

		<div class="c2_bottom">
		<%
			int b = 1;
			for( int i = phone.size()-1; i > phone.size()-6; i--){
		%>
			<a href="phone.jsp?p=<%=i%>"><span class="c2_bottom_t<%=b%>"><% out.print(phone.get(i).getPname()); %></span></a> 
		<%
			b++;
			}
		%>	
			<a href="accessory.jsp"><span class="c2_bottom_t6">产品配件</span></a>
		</div>
	</div>
	
	<!-----------------------------------内容2----------------------------------->
	<div id="c3">
		<a href="phone.jsp?p=5"><img src="img/shop/a.png" /></a>
	</div>
	
	<!-----------------------------------内容3----------------------------------->
	<div id="c4">
		<div class="c4_l">
			<div class="c4_l_top">
				<a href="#"><img src="img/shop/b.png" /></a>
			</div>
			<div class="c4_l_bottom">
				<a href="#"><img src="img/shop/c.png" /></a>
			</div>
		</div>
		<div class="c4_r">
			<div class="c4_r_top">
				<a href="#"><img src="img/shop/b.png" /></a>
			</div>
			<div class="c4_r_bottom">
				<a href="#"><img src="img/shop/c.png" /></a>
			</div>
		</div>
	</div>
	
	<!-----------------------------------内容4----------------------------------->
	<div id="c5">
		<div class="c5_top">
			<a href="#"><span class="c5_top_t">推荐套餐</span></a>
		</div>
		<div class="c5_bottom">
			<a href="#"><span class="c5_bottom_p"><img
					src="img/shop/d.png" /></span></a> <a href="#"><span class="c5_bottom_p"><img
					src="img/shop/e.png" /></span></a> <a href="#"><span class="c5_bottom_p"><img
					src="img/shop/d.png" /></span></a> <a href="#"><span class="c5_bottom_p"><img
					src="img/shop/e.png" /></span></a>
		</div>
	</div>
	
	<!-----------------------------------内容5----------------------------------->
	<div id="c6">
		<div class="c6_top">
			<a href="accessory.jsp"><span class="c6_top_t1">推荐配件</span></a> <a
				href="accessory.jsp"><span class="c6_top_t2">更多配件></span></a>
		</div>
		<div class="c6_c">
			<div class="c6_c_top">
				<div class="c6_c_top_top"></div>
				<a href="accessory.jsp"><span class="c6_c_top_p1"><img
						src="img/shop/1445507218-49012.png" /></span></a> <a href="accessory.jsp"><span
					class="c6_c_top_p1"><img src="img/shop/1423545919-68551.jpg" /></span></a>
				<a href="accessory.jsp"><span class="c6_c_top_p1"><img
						src="img/shop/1423545981-72231.jpg" /></span></a> <a href="accessory.jsp"><span
					class="c6_c_top_p1"><img src="img/shop/1423546032-58545.jpg" /></span></a>
				<a href="accessory.jsp"><span class="c6_c_top_p1"><img
						src="img/shop/1423545963-31549.jpg" /></span></a> <a href="accessory.jsp"><span
					class="c6_c_top_p2"><img src="img/shop/1423545999-56270.jpg" /></span></a>
			</div>
			<div class="c6_c_bottom">
				<a href="accessory.jsp"><span class="c6_c_bottom_t1">数据线</span></a>
				<a href="accessory.jsp"><span class="c6_c_bottom_t2">耳机</span></a>
				<a href="accessory.jsp"><span class="c6_c_bottom_t3">贴膜</span></a>
				<a href="accessory.jsp"><span class="c6_c_bottom_t4">保护套</span></a>
				<a href="accessory.jsp"><span class="c6_c_bottom_t5">电源适配器</span></a>
				<a href="accessory.jsp"><span class="c6_c_bottom_t6">智能硬件</span></a>
			</div>
		</div>
		<div class="c6_bottom">
			<a href="#"><img src="img/shop/f.jpg" /></a>
		</div>
	</div>

	<!------------------------------底部導航------------------------->
	<jsp:include flush="fasle" page="footer.jsp" />
	
</body>
</html>