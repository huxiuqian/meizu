package com.meizu.dao;

import java.util.List;
import java.util.Map;

import com.meizu.po.Health;
import com.meizu.po.NetWork;
import com.meizu.po.Parts;
import com.meizu.po.Phone;

public interface AdminDao {
	// -------------获得所有网络-------------
	public List<Map<String, Object>> getAllNetList();

	// -------------添加网络-------------
	public int addNet(NetWork netWork);

	// -------------修改网络-------------
	public int updateNet(NetWork netWork);

	// -------------根据id找网络-------------
	public NetWork findNetWorkById(int id);

	// -------------删除网络-------------
	public int deleteNet(int id);

	// -------------添加网络时验证名字是否存在（保留功能）-------------

	// -------------获得所有智能电器-------------
	public List<Map<String, Object>> getAllHealthList();

	// -------------添加智能电器-------------
	public int addHealth(Health health);

	// -------------获得所有智能电器类型-------------
	public List<Map<String, Object>> getAllHealthTypeList();

	// -------------删除智能电器-------------
	public int deleteHealth(int id);

	// -------------获得订单-------------
	public List<Map<String, Object>> getOrdersList();

	// -------------增加一个手机-----------
	public int addPhone(Phone phone);

	// -------------增加一个配件----------
	public int addPart(Parts parts);

	// -------------获取所有的手机----------
	public List getAllPhone();

	// --------------获取所有的配件---------
	public List getAllParts();

	// --------------获取所有的配件类型---------
	public List getAllPartType();

	// ------------根据id删除一个部件------------
	public int deleteParts(int partsid);

	// ------------根据id获取一个手机--------
	public Phone getPhoneById(int phoneid);

	// ------------修改手机的信息-----------
	public int updatePhone(Phone phone);

	// ------------根据id删除一个手机---------
	public int deletePhone(int phoneid);

}
