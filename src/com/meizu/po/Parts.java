package com.meizu.po;

public class Parts {
	// 配件ID
	private int partsid;
	// 配件型号
	private String partsname;
	// 配件类别
	private int partstypeid;
	// 配件价格
	private int partsprice;
	// 颜色
	private String partscolor;
	// 图片
	private String partsimage;
	// 配件长度（限耳机、数据线）
	private double partslength;
	// 电池容量（限移动电源）
	private String partsbattery;

	public int getPartsid() {
		return partsid;
	}

	public void setPartsid(int partsid) {
		this.partsid = partsid;
	}

	public String getPartsname() {
		return partsname;
	}

	public void setPartsname(String partsname) {
		this.partsname = partsname;
	}

	public int getPartstypeid() {
		return partstypeid;
	}

	public void setPartstypeid(int partstypeid) {
		this.partstypeid = partstypeid;
	}

	public int getPartsprice() {
		return partsprice;
	}

	public void setPartsprice(int partsprice) {
		this.partsprice = partsprice;
	}

	public String getPartscolor() {
		return partscolor;
	}

	public void setPartscolor(String partscolor) {
		this.partscolor = partscolor;
	}

	public String getPartsimage() {
		return partsimage;
	}

	public void setPartsimage(String partsimage) {
		this.partsimage = partsimage;
	}

	public double getPartslength() {
		return partslength;
	}

	public void setPartslength(double partslength) {
		this.partslength = partslength;
	}

	public String getPartsbattery() {
		return partsbattery;
	}

	public void setPartsbattery(String partsbattery) {
		this.partsbattery = partsbattery;
	}

	@Override
	public String toString() {
		return "Parts [partsid=" + partsid + ", partsname=" + partsname + ", partstypeid=" + partstypeid
				+ ", partsprice=" + partsprice + ", partscolor=" + partscolor + ", partsimage=" + partsimage
				+ ", partslength=" + partslength + ", partsbattery=" + partsbattery + "]";
	}

	public Parts(int partsid, String partsname, int partstypeid, int partsprice, String partscolor, String partsimage,
			double partslength, String partsbattery) {
		super();
		this.partsid = partsid;
		this.partsname = partsname;
		this.partstypeid = partstypeid;
		this.partsprice = partsprice;
		this.partscolor = partscolor;
		this.partsimage = partsimage;
		this.partslength = partslength;
		this.partsbattery = partsbattery;
	}

	public Parts() {
		super();
	}

}
