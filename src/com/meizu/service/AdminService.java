package com.meizu.service;

import java.util.List;
import java.util.Map;

import com.meizu.po.Health;
import com.meizu.po.NetWork;
import com.meizu.po.Parts;
import com.meizu.po.Phone;

public interface AdminService {
	// -------------获得所有网络-------------
	public List<Map<String, Object>> getAllNetList();

	// -------------添加网络-------------
	public int addNet(NetWork netWork);

	// -------------修改网络-------------
	public int updateNet(NetWork netWork);

	// -------------删除网络-------------
	public int deleteNet(int id);

	// -------------根据id找网络-------------
	public NetWork findNetWorkById(int id);

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

	/**
	 * 获取所有的配件类型
	 * 
	 * @return
	 */
	public List getAllPartsType();

	/**
	 * 添加一个手机
	 * 
	 * @param phone
	 * @return 成功返回1
	 */
	public int addPhone(Phone phone);

	/**
	 * 添加一个部件
	 * 
	 * @param parts
	 * @return
	 */
	public int addParts(Parts parts);

	/**
	 * 获取手机
	 * 
	 * @return
	 */
	public List getAllPhone();

	/**
	 * 获取部件
	 * 
	 * @return
	 */
	public List getAllParts();

	/**
	 * 根据id获取手机
	 * 
	 * @return
	 */
	public Phone getPhoneById(int phoneid);

	/**
	 * 修改手机信息
	 * 
	 * @param phone
	 * @return
	 */
	public int updatePhone(Phone phone);

	/**
	 * 根据id删除手机
	 * 
	 * @param phoneid
	 * @return
	 */
	public int deletePhone(int phoneid);

	/**
	 * 根据id 删除部件
	 * 
	 * @param partsid
	 * @return
	 */
	public int deleteParts(int partsid);

}
