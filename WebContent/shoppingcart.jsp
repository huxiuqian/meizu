<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>购物车-PRO5</title>
<link href="css/ShoppingCart.css" rel="stylesheet" />
</head>

<body>
	<!-------------------------------------------------------------导航---------------------------------------------------------->
	<%@ include file="header.jsp"%>

	<!-------------------------------------------------------------内容1---------------------------------------------------------->
	<div id="c2">
		<div class="c2_c">
			<div class="c2_c1">1&nbsp;我的购物车</div>
			<div class="c2_c2">2&nbsp;填写核对用户信息</div>
			<div class="c2_c3">3&nbsp;成功提交订单</div>
		</div>
	</div>

	<!-------------------------------------------------------------内容2---------------------------------------------------------->
	<div id="c3">
		<div class="c3_top">
			<div class="c3_top_1">商品</div>
			<div class="c3_top_2">单价</div>
			<div class="c3_top_3">购买数量</div>
			<div class="c3_top_4">总计</div>
		</div>
		<div class="c3_bottom">
			<div class="c3_bottom_1">
				<div class="c3_bottom_1_l">
					<img src="img/ShoppingCart/1442980172-10814 (1).jpg" />
				</div>
				<div class="c3_bottom_1_r">
					<div class="c3_bottom_1_r_t1">PRO&nbsp;5-PRO&nbsp;5(32G)联通版&nbsp;银白色</div>
					<div class="c3_bottom_1_r_t2">需要购买意外保的客户可以在收货次日&nbsp;24:00&nbsp;前在</div>
					<div class="c3_bottom_1_r_t3">
						<a href="#">此页面进行补买>></a>
					</div>
				</div>
			</div>
			<div class="c3_bottom_2">￥2799</div>
			<div class="c3_bottom_3">
				<div class="c3_bottom_3_1">
					<img src="img/ShoppingCart/Q6VQ[D(7CA%O]C(UVLE57}G.png" />
				</div>
				<div class="c3_bottom_3_2">1</div>
				<div class="c3_bottom_3_3">
					<img src="img/ShoppingCart/ANZYQZV7CQBI8}B857VDR4C.png" />
				</div>
			</div>
			<div class="c3_bottom_4">￥2799.00</div>
		</div>
	</div>

	<!-------------------------------------------------------------内容3---------------------------------------------------------->
	<div id="c4">
		<div class="c4_1">
			<div class="c4_1_c">
				<div class="c4_1_c1">
					<div class="c4_1_c1_l">商品总额</div>
					<div class="c4_1_c1_r">￥2799.00</div>
				</div>
				<div class="c4_1_c1">
					<div class="c4_1_c1_l">套餐优惠</div>
					<div class="c4_1_c1_r" style="color: #f56313">-￥0.00</div>
				</div>
				<div class="c4_1_c1">
					<div class="c4_1_c1_l">折扣</div>
					<div class="c4_1_c1_r" style="color: #f56313">-￥0</div>
				</div>
			</div>
		</div>
		<div class="c4_2">
			<div class="c4_2_r">￥2799.00</div>
			<div class="c4_2_l">应付</div>
		</div>
		<div class="c4_3">
			<div class="c4_3_c">
				<a href="order.jsp">去结算</a>
			</div>
		</div>
	</div>

	<!------------------------------底部導航------------------------->
	<jsp:include flush="fasle" page="footer.jsp" />

</body>
</html>