package com.meizu.dao.impl;

import java.util.Random;

import com.meizu.dao.UsersDao;
import com.meizu.po.Users;
import com.meizu.utils.DBUtil;

public class UsersDaoImpl implements UsersDao {
	private DBUtil dbutil = new DBUtil();

	@Override
	public Users findByPhone(String phone) {
		String sql = "select * from users where tel=?";
		Object[] paramList = { phone };
		Users result = null;
		try {
			result = (Users) dbutil.getObject(Users.class, sql, paramList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public Users findByUsername(String username) {
		String sql = "select * from users where username=?";
		Object[] paramList = { username };
		Users result = null;
		try {
			result = (Users) dbutil.getObject(Users.class, sql, paramList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public Users login(Users user) {
		String sql = "select * from users where username=? and password=?";
		Object[] paramList = { user.getUsername(), user.getPassword() };
		Users resultUser = null;
		try {
			resultUser = (Users) dbutil.getObject(Users.class, sql, paramList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultUser;
	}

	@Override
	public int register(String tel) {
		String sql = "insert into users (username,tel) values (?,?)";
		Object[] paramList = { "手机用户" + ("" + Math.random() * 1000000).substring(0, 6), tel };
		int resultUser = 0;
		try {
			resultUser = dbutil.execute(sql, paramList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultUser;
	}

	@Override
	public int modifyUser(Users user) {
		String sql = "update users set username=?,password=?,realname=?,sex=?,age=?,residence=?,email=? where tel=?";
		Object[] paramList = { user.getUsername(), user.getPassword(), user.getRealname(), user.getSex(), user.getAge(),
				user.getResidence(), user.getEmail(), user.getTel() };
		int resultUser = 0;
		try {
			resultUser = dbutil.execute(sql, paramList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return resultUser;
	}
}
