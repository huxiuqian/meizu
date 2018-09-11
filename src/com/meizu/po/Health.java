package com.meizu.po;

public class Health {
	private int healthid;
	private String healthname;
	private int healthtypeid;
	private String healthcolor;
	private int healthprice;
	private String healthimage;
	// 智能电器功能
	private String healthfunction;
	// 智能电器容量
	private String healthcapacity;

	public int getHealthid() {
		return healthid;
	}

	public void setHealthid(int healthid) {
		this.healthid = healthid;
	}

	public String getHealthname() {
		return healthname;
	}

	public void setHealthname(String healthname) {
		this.healthname = healthname;
	}

	public int getHealthtypeid() {
		return healthtypeid;
	}

	public void setHealthtypeid(int healthtypeid) {
		this.healthtypeid = healthtypeid;
	}

	public String getHealthcolor() {
		return healthcolor;
	}

	public void setHealthcolor(String healthcolor) {
		this.healthcolor = healthcolor;
	}

	public int getHealthprice() {
		return healthprice;
	}

	public void setHealthprice(int healthprice) {
		this.healthprice = healthprice;
	}

	public String getHealthimage() {
		return healthimage;
	}

	public void setHealthimage(String healthimage) {
		this.healthimage = healthimage;
	}

	public String getHealthfunction() {
		return healthfunction;
	}

	public void setHealthfunction(String healthfunction) {
		this.healthfunction = healthfunction;
	}

	public String getHealthcapacity() {
		return healthcapacity;
	}

	public void setHealthcapacity(String healthcapacity) {
		this.healthcapacity = healthcapacity;
	}

	@Override
	public String toString() {
		return "Health [healthid=" + healthid + ", healthname=" + healthname + ", healthtypeid=" + healthtypeid
				+ ", healthcolor=" + healthcolor + ", healthprice=" + healthprice + ", healthimage=" + healthimage
				+ ", healthfunction=" + healthfunction + ", healthcapacity=" + healthcapacity + "]";
	}

	public Health(int healthid, String healthname, int healthtypeid, String healthcolor, int healthprice,
			String healthimage, String healthfunction, String healthcapacity) {
		super();
		this.healthid = healthid;
		this.healthname = healthname;
		this.healthtypeid = healthtypeid;
		this.healthcolor = healthcolor;
		this.healthprice = healthprice;
		this.healthimage = healthimage;
		this.healthfunction = healthfunction;
		this.healthcapacity = healthcapacity;
	}

	public Health() {
		super();
	}

}
