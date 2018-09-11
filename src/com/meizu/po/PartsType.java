package com.meizu.po;

public class PartsType {
	// 配件类型ID
	private int partstypeid;
	// 配件类型名称
	private String partstypename;

	public int getPartstypeid() {
		return partstypeid;
	}

	public void setPartstypeid(int partstypeid) {
		this.partstypeid = partstypeid;
	}

	public String getPartstypename() {
		return partstypename;
	}

	public void setPartstypename(String partstypename) {
		this.partstypename = partstypename;
	}

	public PartsType(int partstypeid, String partstypename) {
		super();
		this.partstypeid = partstypeid;
		this.partstypename = partstypename;
	}

	public PartsType() {
		super();
	}

	@Override
	public String toString() {
		return "PartsType [partstypeid=" + partstypeid + ", partstypename=" + partstypename + "]";
	}

}
