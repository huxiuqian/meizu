package com.meizu.po;

public class HealthType {
	private int healthtypeid;
	private String healthtypename;

	public int getHealthtypeid() {
		return healthtypeid;
	}

	public void setHealthtypeid(int healthtypeid) {
		this.healthtypeid = healthtypeid;
	}

	public String getHealthtypename() {
		return healthtypename;
	}

	public void setHealthtypename(String healthtypename) {
		this.healthtypename = healthtypename;
	}

	@Override
	public String toString() {
		return "HealthType [healthtypeid=" + healthtypeid + ", healthtypename=" + healthtypename + "]";
	}

	public HealthType(int healthtypeid, String healthtypename) {
		super();
		this.healthtypeid = healthtypeid;
		this.healthtypename = healthtypename;
	}

	public HealthType() {
		super();
	}

}
