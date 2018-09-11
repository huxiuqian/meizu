package com.meizu.service.impl;

import com.meizu.dao.UsersDao;
import com.meizu.dao.impl.UsersDaoImpl;
import com.meizu.po.Users;
import com.meizu.service.UsersService;

public class UsersServiceImpl implements UsersService {
	private UsersDao userDao = new UsersDaoImpl();

	@Override
	public Users findByPhone(String phone) {
		return userDao.findByPhone(phone);
	}

	@Override
	public Users findByUsername(String username) {
		return userDao.findByUsername(username);
	}

	@Override
	public Users login(Users user) {
		return userDao.login(user);
	}

	@Override
	public int register(String tel) {
		return userDao.register(tel);
	}

	@Override
	public int modifyUser(Users user) {
		return userDao.modifyUser(user);
	}
}
