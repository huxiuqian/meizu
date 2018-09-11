package com.meizu.po;

import java.util.Date;

public class Orders {
	private int orderid;
	// 订单号
	private int ordernum;
	private int userid;
	private int phoneid;
	private int phonecount;
	// 智能电器ID
	private int healthid;
	// 智能电器数量
	private int healthcount;
	// 配件ID
	private int pastsid;
	// 配件数量
	private int pastscount;
	// 收货地址ID
	private int addressid;
	// 订单数量
	private int ordercount;
	// 订单总金额
	private int orderprice;
	// 订单时间
	private Date ordertime;
	// 订单状态 1配送，0未配送
	private String delivery;

	public int getOrderid() {
		return orderid;
	}

	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}

	public int getOrdernum() {
		return ordernum;
	}

	public void setOrdernum(int ordernum) {
		this.ordernum = ordernum;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public int getPhoneid() {
		return phoneid;
	}

	public void setPhoneid(int phoneid) {
		this.phoneid = phoneid;
	}

	public int getPhonecount() {
		return phonecount;
	}

	public void setPhonecount(int phonecount) {
		this.phonecount = phonecount;
	}

	public int getHealthid() {
		return healthid;
	}

	public void setHealthid(int healthid) {
		this.healthid = healthid;
	}

	public int getHealthcount() {
		return healthcount;
	}

	public void setHealthcount(int healthcount) {
		this.healthcount = healthcount;
	}

	public int getPastsid() {
		return pastsid;
	}

	public void setPastsid(int pastsid) {
		this.pastsid = pastsid;
	}

	public int getPastscount() {
		return pastscount;
	}

	public void setPastscount(int pastscount) {
		this.pastscount = pastscount;
	}

	public int getAddressid() {
		return addressid;
	}

	public void setAddressid(int addressid) {
		this.addressid = addressid;
	}

	public int getOrdercount() {
		return ordercount;
	}

	public void setOrdercount(int ordercount) {
		this.ordercount = ordercount;
	}

	public int getOrderprice() {
		return orderprice;
	}

	public void setOrderprice(int orderprice) {
		this.orderprice = orderprice;
	}

	public Date getOrdertime() {
		return ordertime;
	}

	public void setOrdertime(Date ordertime) {
		this.ordertime = ordertime;
	}

	public String getDelivery() {
		return delivery;
	}

	public void setDelivery(String delivery) {
		this.delivery = delivery;
	}

	@Override
	public String toString() {
		return "Orders [orderid=" + orderid + ", ordernum=" + ordernum + ", userid=" + userid + ", phoneid=" + phoneid
				+ ", phonecount=" + phonecount + ", healthid=" + healthid + ", healthcount=" + healthcount
				+ ", pastsid=" + pastsid + ", pastscount=" + pastscount + ", addressid=" + addressid + ", ordercount="
				+ ordercount + ", orderprice=" + orderprice + ", ordertime=" + ordertime + ", delivery=" + delivery
				+ "]";
	}

	public Orders(int orderid, int ordernum, int userid, int phoneid, int phonecount, int healthid, int healthcount,
			int pastsid, int pastscount, int addressid, int ordercount, int orderprice, Date ordertime,
			String delivery) {
		super();
		this.orderid = orderid;
		this.ordernum = ordernum;
		this.userid = userid;
		this.phoneid = phoneid;
		this.phonecount = phonecount;
		this.healthid = healthid;
		this.healthcount = healthcount;
		this.pastsid = pastsid;
		this.pastscount = pastscount;
		this.addressid = addressid;
		this.ordercount = ordercount;
		this.orderprice = orderprice;
		this.ordertime = ordertime;
		this.delivery = delivery;
	}

	public Orders() {
		super();
	}

}
