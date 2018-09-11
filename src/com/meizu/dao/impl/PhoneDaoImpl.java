package com.meizu.dao.impl;

import java.util.List;

import com.meizu.dao.PhoneDao;
import com.meizu.po.Phone;
import com.meizu.utils.DBUtil;

public class PhoneDaoImpl implements PhoneDao {
	private DBUtil dbUtil = new DBUtil();

	@Override
	public List<Phone> selectPhone() {
		String sql = "select * from phone";
		List list = null;
		Object[] params = {};
		try {
			list = dbUtil.getQueryList(Phone.class, sql, params);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

}
