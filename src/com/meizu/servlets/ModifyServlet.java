package com.meizu.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meizu.po.Users;
import com.meizu.service.UsersService;
import com.meizu.service.impl.UsersServiceImpl;

/**
 * 修改个人信息
 * 
 * @author zhaomin
 *
 */
public class ModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UsersService userService = new UsersServiceImpl();

	public ModifyServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		Users user1 = (Users) request.getSession().getAttribute("user");
		String tel = user1.getTel();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String realname = request.getParameter("realname");
		String sex = request.getParameter("sex");
		int age = Integer.parseInt(request.getParameter("age"));
		String residence = request.getParameter("residence");
		String email = request.getParameter("email");
		Users user = new Users();
		user.setUsername(username);
		user.setPassword(password);
		user.setRealname(realname);
		user.setSex(sex);
		user.setAge(age);
		user.setResidence(residence);
		user.setEmail(email);
		user.setTel(tel);

		userService.modifyUser(user);
		request.getSession().setAttribute("user", user);
		response.getWriter().print("{\"res\":1}");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
