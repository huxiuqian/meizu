package com.meizu.service.impl;

import java.util.List;
import java.util.Map;

import com.meizu.dao.AdminDao;
import com.meizu.dao.impl.AdminDaoImpl;
import com.meizu.po.Health;
import com.meizu.po.NetWork;
import com.meizu.po.Parts;
import com.meizu.po.Phone;
import com.meizu.service.AdminService;

public class AdminServiceImpl implements AdminService {
	AdminDao ad = new AdminDaoImpl();

	@Override
	public List<Map<String, Object>> getAllNetList() {
		// TODO Auto-generated method stub
		return ad.getAllNetList();
	}

	@Override
	public int addNet(NetWork netWork) {
		// TODO Auto-generated method stub
		return ad.addNet(netWork);
	}

	@Override
	public int updateNet(NetWork netWork) {
		// TODO Auto-generated method stub
		return ad.updateNet(netWork);
	}

	@Override
	public int deleteNet(int id) {
		// TODO Auto-generated method stub
		return ad.deleteNet(id);
	}

	@Override
	public NetWork findNetWorkById(int id) {
		// TODO Auto-generated method stub
		return ad.findNetWorkById(id);
	}

	@Override
	public List<Map<String, Object>> getAllHealthList() {
		// TODO Auto-generated method stub
		return ad.getAllHealthList();
	}

	@Override
	public int addHealth(Health health) {
		// TODO Auto-generated method stub
		return ad.addHealth(health);
	}

	@Override
	public List<Map<String, Object>> getAllHealthTypeList() {
		// TODO Auto-generated method stub
		return ad.getAllHealthTypeList();
	}

	@Override
	public int deleteHealth(int id) {
		// TODO Auto-generated method stub
		return ad.deleteHealth(id);
	}

	@Override
	public List<Map<String, Object>> getOrdersList() {
		// TODO Auto-generated method stub
		return ad.getOrdersList();
	}

	@Override
	public int addPhone(Phone phone) {
		return ad.addPhone(phone);
	}

	@Override
	public List getAllPhone() {
		return ad.getAllPhone();
	}

	@Override
	public Phone getPhoneById(int phoneid) {
		return ad.getPhoneById(phoneid);
	}

	@Override
	public int updatePhone(Phone phone) {
		return ad.updatePhone(phone);
	}

	@Override
	public int deletePhone(int phoneid) {
		return ad.deletePhone(phoneid);
	}

	@Override
	public List getAllPartsType() {
		return ad.getAllPartType();
	}

	@Override
	public int addParts(Parts parts) {
		return ad.addPart(parts);
	}

	@Override
	public List getAllParts() {
		return ad.getAllParts();
	}

	@Override
	public int deleteParts(int partsid) {
		return ad.deleteParts(partsid);
	}

}
