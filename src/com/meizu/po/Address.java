package com.meizu.po;

public class Address {
	private int addressid;
	private int userid;
	private String address;
	private String telphone;

	public int getAddressid() {
		return addressid;
	}

	public void setAddressid(int addressid) {
		this.addressid = addressid;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTelphone() {
		return telphone;
	}

	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}

	@Override
	public String toString() {
		return "Address [addressid=" + addressid + ", userid=" + userid + ", address=" + address + ", telphone="
				+ telphone + "]";
	}

	public Address(int addressid, int userid, String address, String telphone) {
		super();
		this.addressid = addressid;
		this.userid = userid;
		this.address = address;
		this.telphone = telphone;
	}

	public Address() {
		super();
	}

}
