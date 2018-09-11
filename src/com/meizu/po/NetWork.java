package com.meizu.po;

public class NetWork {
	// 网络类型
	private int networkid;
	// 网络名称
	private String netname;

	public int getNetworkid() {
		return networkid;
	}

	public void setNetworkid(int networkid) {
		this.networkid = networkid;
	}

	public String getNetname() {
		return netname;
	}

	public void setNetname(String netname) {
		this.netname = netname;
	}

	@Override
	public String toString() {
		return "NetWork [networkid=" + networkid + ", netname=" + netname + "]";
	}

	public NetWork(int networkid, String netname) {
		super();
		this.networkid = networkid;
		this.netname = netname;
	}

	public NetWork() {
		super();
	}

}
