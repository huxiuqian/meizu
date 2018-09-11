<%@page import="com.meizu.po.Phone"%>
<%@page import="java.util.List"%>
<%@page import="com.meizu.dao.impl.PhoneDaoImpl"%>
<%@page import="com.meizu.dao.PhoneDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>"> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>魅族商城</title>
<link href="css/mobile.css" rel="stylesheet">
</head>

<body>
<%

	PhoneDao pd = new PhoneDaoImpl();
	List<Phone> phone = pd.selectPhone();
	String j=request.getParameter("p");
    int k = Integer.parseInt(j);

%>
	<!--------------------- 导航 ------------------------>
	<%@ include file="header.jsp"%>

	<!-- -------------------內容1 ---------------------->
	<div id="c1">
		<div class="c1_l">
			<img src="<% out.print(phone.get(k).getImgpath());%>" width="507px" height="486px" />
		</div>
		<div class="c1_r">
			<div class="c1_r_1">M码通道&nbsp;&nbsp;|&nbsp;&nbsp;我的订单&nbsp;&nbsp;|&nbsp;&nbsp;回购单查询&nbsp;&nbsp;|&nbsp;&nbsp;购物车0件</div>
			<div class="c1_r_2"><% out.print(phone.get(k).getPname());%>
			<div class="c1_r_21">&nbsp;&nbsp;<% out.print(phone.get(k).getDescribe());%></div>
			</div>
			<div class="c1_r_3">￥<% out.print(phone.get(k).getPrice());%></div>

			<div class="c1_r_4">
				<div class="c1_r_4_a">颜色</div>
				<div class="c1_r_4_l"></div>
				<div class="c1_r_4_c"></div>
				<div class="c1_r_4_r"></div>
				<div class="c1_r_4_f"></div>
				<div class="c1_r_4_b"></div>
			</div>

			<div class="c1_r_5">
				<span><% out.print(phone.get(k).getColor());%></span>
			</div>
			<div class="c1_r_6">
				<div class="c1_r_6_l">网络</div>
				<div class="c1_r_6_c">
					<div class="c1_r_6_c_1"><% out.print(phone.get(k).getNetworkid());%></div>
				</div>
			</div>

			<div class="c1_r_7"></div>
			<div class="c1_r_8">
				<div class="c1_r_8_l">内存</div>
				<div class="c1_r_8_g">
					<div class="c1_r_8_t">
						<span><% out.print(phone.get(k).getStorage());%>G</span>
					</div>
					<div class="c1_r_8_b">￥<% out.print(phone.get(k).getPrice());%></div>
				</div>
			</div>

 		<div class="c1_r_10">
				<div class="c1_r_10_l">数量</div>
				<div class="c1_r_10_c">
					<div class="c1_r_10_c_c">
						<div class="c1_r_10_c_c_1">
							<img src="img/order/jian.png" />
						</div>
						<div class="c1_r_10_c_c_2">1</div>
						<div class="c1_r_10_c_c_3">
							<img src="img/order/jia.png" />
						</div>
					</div>
				</div>
				<div class="c1_r_10_r">(限购1件)</div>
			</div>

			<div class="c1_r_12">
				<div class="c1_r_12_l">
					<div class="c1_r_12_l_1">
						<a href="orderpro5.jsp"> 立即购买</a>
					</div>
				</div>

				<div class="c1_r_12_r">
					<div class="c1_r_12_r_2">
						<a href="shoppingcart.jsp">加入购物车</a>
					</div>
				</div>
			</div>

			<!----------------------------货物短缺
			<div class="c1_r_12">
				<div class="c1_r_12_l" style="background: #999999;">
					<div class="c1_r_12_l_1" style="text-align: center;">货物短缺</div>
				</div>
			</div>
			------------------------------------->

			<div class="c1_r_13">
				<span>需要购买意外保德客户可以再收货次日&nbsp;24：00&nbsp;前在此页面进行补买&nbsp;>&nbsp;></span>
			</div>
			<div class="c1_r_14">
				<p><% out.print(phone.get(k).getDescribe());%></p>
			</div>
		</div>
	</div>

	<!---------------------------內容2--------------------- -->
	<div style="clear: both"></div>
	<div id="c2">
		<div class="c2_top">
			<div class="c2_top_l">
				<div class="c2_top_l_t"></div>
				<div class="c2_top_l_b">技术规格</div>
			</div>
			<div class="c2_top_r"></div>
		</div>

		<div class="c2_1">
			<div class="c2_1_l">
				<div class="c2_1_l_1">外观尺寸</div>
			</div>
			<div class="c2_1_r">
				<div class="c2_1_r_l">
					<p>尺寸：150.7x75.3x8.2mm</p>
				</div>
				<div class="c2_1_r_r">
					<img src="img/MEILAN2/shoujidaxiao.png" />
				</div>
			</div>
		</div>

		<div class="c2_2">
			<div class="c2_2_l">
				<div class="c2_2_l_1">颜色</div>
			</div>
			<div class="c2_2_r">
				<div class="c2_2_r_2"><% out.print(phone.get(k).getColor());%></div>
			</div>
		</div>

		<div style="clear: both"></div>
		<div class="c2_3">
			<div class="c2_3_l">
				<div class="c2_3_l_1">容量</div>
			</div>
			<div class="c2_3_r">
				<div class="c2_3_r_2"><% out.print(phone.get(k).getStorage());%>G（支持存储卡扩展）</div>
			</div>
		</div>

		<div style="clear: both"></div>
		<div class="c2_4">
			<div class="c2_4_l">
				<div class="c2_4_l_1">系统</div>
			</div>
			<div class="c2_4_r">
				<div class="c2_4_r_2"><% out.print(phone.get(k).getSystem());%></div>
			</div>
		</div>

		<div style="clear: both"></div>
		<div class="c2_5">
			<div class="c2_5_l">
				<div class="c2_5_l_1">版本</div>
			</div>
			<div class="c2_5_r">
				<div class="c2_5_r_2"><% out.print(phone.get(k).getVersion());%></div>
			</div>
		</div>

		<div style="clear: both"></div>
		<div class="c2_6">
			<div class="c2_6_l">
				<div class="c2_6_l_1">芯片</div>
			</div>
			<div class="c2_6_r">
				<div class="c2_6_r_2">
					<p>CPU:HelloX10处理器</p>
					<br />GPU：G6200&nbsp;550MHz图形处理器
				</div>
				<div class="c2_6_r_3">
					<img src="img/MEILAN2/shouji.png" />
				</div>
			</div>
		</div>

		<div style="clear: both"></div>
		<div class="c2_7">
			<div class="c2_7_l">
				<div class="c2_7_l_1">屏幕</div>
			</div>
			<div class="c2_7_r">
				<div class="c2_7_r_2">
					<p>尺寸：<% out.print(phone.get(k).getSize());%></p>
					<br />
					<p>分辨率：1920x1080</p>
				</div>
			</div>
		</div>

		<div style="clear: both"></div>
		<div class="c2_8">
			<div class="c2_8_l">
				<div class="c2_8_l_1">摄像头</div>
			</div>
			<div class="c2_8_r">
				<div class="c2_8_r_2">
					<p>前置：OV5670&nbsp;500万像素、F2.0光圈、FotoNation2.0智能美颜、Face&nbsp;AE面部曝光增强</p>
					<br />
					<p>后置：2116万像素、F2.2光圈、激光辅助对焦、6片式镜头、双色温闪光灯、全景模式、蓝宝石镜头</p>
				</div>
			</div>
		</div>

		<div style="clear: both"></div>
		<div class="c2_9">
			<div class="c2_9_l">
				<div class="c2_9_l_1">电池</div>
			</div>
			<div class="c2_9_r">
				<div class="c2_9_r_2">
					<div class="c2_9_r_2_t">
						<p>索尼/AIL&nbsp;电芯3050mAh(典型值)&nbsp;电池</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div style="clear: both"></div>

	<!------------------------------底部導航------------------------->
	<jsp:include flush="fasle" page="footer.jsp" />

</body>
</html>