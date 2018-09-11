package com.meizu.po;

public class Phone {
	// 手机编号
	private int phoneid;
	// 网络类型
	private int networkid;
	// 手机名称
	private String pname;
	// 版本信息
	private String version;
	// 内存
	private int storage;
	// 价格
	private int price;
	// 广告词
	private String describe;
	// 图片
	private String imgpath;
	// 颜色
	private String color;
	// 屏幕尺寸
	private String size;
	// 系统
	private String system;

	public int getPhoneid() {
		return phoneid;
	}

	public void setPhoneid(int phoneid) {
		this.phoneid = phoneid;
	}

	public int getNetworkid() {
		return networkid;
	}

	public void setNetworkid(int networkid) {
		this.networkid = networkid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getVersion() {
		return version;
	}

	public void setVersion(String version) {
		this.version = version;
	}

	public int getStorage() {
		return storage;
	}

	public void setStorage(int storage) {
		this.storage = storage;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getDescribe() {
		return describe;
	}

	public void setDescribe(String describe) {
		this.describe = describe;
	}

	public String getImgpath() {
		return imgpath;
	}

	public void setImgpath(String imgpath) {
		this.imgpath = imgpath;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getSystem() {
		return system;
	}

	public void setSystem(String system) {
		this.system = system;
	}

	@Override
	public String toString() {
		return "Phone [phoneid=" + phoneid + ", networkid=" + networkid + ", pname=" + pname + ", version=" + version
				+ ", storage=" + storage + ", price=" + price + ", describe=" + describe + ", imgpath=" + imgpath
				+ ", color=" + color + ", size=" + size + ", system=" + system + "]";
	}

	public Phone(int phoneid, int networkid, String pname, String version, int storage, int price, String describe,
			String imgpath, String color, String size, String system) {
		super();
		this.phoneid = phoneid;
		this.networkid = networkid;
		this.pname = pname;
		this.version = version;
		this.storage = storage;
		this.price = price;
		this.describe = describe;
		this.imgpath = imgpath;
		this.color = color;
		this.size = size;
		this.system = system;
	}

	public Phone() {
		super();
	}

}
