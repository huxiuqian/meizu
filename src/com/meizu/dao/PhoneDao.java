package com.meizu.dao;

import java.util.List;

import com.meizu.po.Phone;

public interface PhoneDao {
	// 查询Phone表
	List<Phone> selectPhone();
}
