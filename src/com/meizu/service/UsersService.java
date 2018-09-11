package com.meizu.service;

import com.meizu.po.Users;

public interface UsersService {
	Users findByPhone(String phone);

	Users findByUsername(String username);

	Users login(Users user);

	int register(String tel);

	int modifyUser(Users user);
}
