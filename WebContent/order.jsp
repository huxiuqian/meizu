<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>PRO5支付</title>
<link href="css/order.css" rel="stylesheet" />
</head>

<body>
	<!--------------------- 导航 ------------------------>
	<%@ include file="header.jsp"%>

	<!----------------------内容 ------------------------>
	<div id="c1">
		<div class="c1_c">
			<div class="c1_c1">1&nbsp;我的购物车</div>
			<div class="c1_c2">2&nbsp;填写核对用户信息</div>
			<div class="c1_c3">3&nbsp;成功提交订单</div>
		</div>
	</div>

	<div id="c2">
		<div class="c2_1">
			<p>收货人信息</p>
			<p>&nbsp;</p>
		</div>

		<div class="c2_2">
			<form>
				<label>收件人&nbsp;&nbsp;&nbsp; <input name="textfield2"
					type="text" size="45" /> &nbsp;*
				</label>
				<p>&nbsp;</p>

				<label>手机&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
					name="textfield" type="text" size="45" /> &nbsp;*&nbsp;必填
				</label>
				<p>&nbsp;</p>

				<label>地址&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <select
					name="select">
						<option>省份/直辖市</option>
						<option>山东省</option>
						<option>河北省</option>
						<option>河南省</option>
						<option>山西省</option>
						<option>北京市</option>
						<option>上海市</option>
						<option>广州省</option>
						<option>广东省</option>
						<option>重庆市</option>
						<option>东北省</option>
						<option>西藏省</option>
						<option>海南市</option>
				</select> &nbsp;&nbsp; <select name="select">
						<option>城市</option>
						<option>菏泽市</option>
						<option>济南市</option>
						<option>青岛市</option>
						<option>滨州市</option>
						<option>济宁市</option>
						<option>烟台市</option>
						<option>泰安市</option>
						<option>淄博市</option>
						<option>临沂市</option>
						<option>德州市</option>
						<option>东营市</option>
						<option>蓬莱市</option>
				</select> &nbsp;&nbsp; <select name="select">
						<option>区/县</option>
						<option>牡丹区</option>
						<option>鄄城县</option>
						<option>郓城县</option>
						<option>单县</option>
						<option>定陶</option>
						<option>曹县</option>
				</select>
				</label>
				<p>&nbsp;</p>

				<label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input name="textfield" type="text" size="45" />&nbsp;*&nbsp;请选择省份、城市、区/县
				</label>
				<p>&nbsp;</p>

				<p>
					<label>发票类型&nbsp; <input type="radio" name="radiobutton"
						value="radiobutton" /> 电子发票
					</label>
				</p>
			</form>

			<div class="c2_3">
				<p>发票抬头：个人</p>
				<br />
				<p>-电子发票是税务局认可的有效凭证，与纸质发票具有同等法律效力；</p>
				<br />
				<p>-电子发票目前仅对个人用户开具，不可用于单位报销，可在订单详情页查看电子发票信息；</p>
				<br />
				<p>-为响应国家政策，同时提高发货效率，我们的订单默认开电子发票；如需更换纸质发票，可联系客服400-788-3333；</p>
				<br />
				<p>
					什么是 电子发票&nbsp;<img src="img/order/？.png" />
				</p>
			</div>

			<div class="c2_4">
				<form>
					<label>备注&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
						name="textfield" type="text" size="45" /></label>
					<p>&nbsp;</p>
					<label>验证码&nbsp;&nbsp;&nbsp;&nbsp; <input name="textfield"
						type="text" size="45" />&nbsp;<img src="img/order/验证码.png"
						height="34" />&nbsp;*
					</label>
					<p>&nbsp;</p>
				</form>
			</div>
		</div>
	</div>

	<div id="c3">
		<div class="c3_t">订单信息</div>
		<div class="c3_b">
			<div class="c3_b_top">
				<div class="c3_b_top_1">商品</div>
				<div class="c3_b_top_2">单价</div>
				<div class="c3_b_top_3">购买数量</div>
				<div class="c3_b_top_4">总计</div>
			</div>
			<div class="c3_b_bottom">
				<div class="c3_b_bottom_1">
					<div class="c3_b_bottom_1_l">
						<img src="img/order/购物车.jpg" />
					</div>
					<div class="c3_b_bottom_1_r">
						<div class="c3_b_bottom_1_r_t1">PRO&nbsp;5-PRO&nbsp;5(32G)联通版&nbsp;银白色</div>
						<div class="c3_b_bottom_1_r_t2">需要购买意外保的客户可以在收货次日&nbsp;24:00&nbsp;前在</div>
						<div class="c3_b_bottom_1_r_t3">
							<a href="#">此页面进行补买>></a>
						</div>
					</div>
				</div>
				<div class="c3_b_bottom_2">￥2799.00</div>
				<div class="c3_b_bottom_3">
					<div class="c3_b_bottom_3_1">
						<img src="img/order/Q6VQ[D(7CA%O]C(UVLE57}G.png" />
					</div>
					<div class="c3_b_bottom_3_2">1</div>
					<div class="c3_b_bottom_3_3">
						<img src="img/order/ANZYQZV7CQBI8}B857VDR4C.png" />
					</div>
				</div>
				<div class="c3_b_bottom_4">￥2799.00</div>
			</div>
		</div>
		<div class="c3_f">
			<br /> +&nbsp;使用优惠
		</div>
	</div>

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
				<a href="#">去结算</a>
			</div>
		</div>
	</div>

	<!------------------------------底部導航------------------------->
	<jsp:include flush="fasle" page="footer.jsp" />

</body>

</html>