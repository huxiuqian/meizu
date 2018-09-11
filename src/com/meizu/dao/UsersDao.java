package com.meizu.dao;

import com.meizu.po.Users;

public interface UsersDao {
	Users findByPhone(String phone);

	Users findByUsername(String username);

	Users login(Users user);

	int register(String tel);

	int modifyUser(Users user);
}
