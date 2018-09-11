package com.meizu.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meizu.po.Users;
import com.meizu.service.UsersService;
import com.meizu.service.impl.UsersServiceImpl;

/**
 * 用户名登录
 * 
 * @author zhaomin
 *
 */
public class UserNameLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UsersService userService = new UsersServiceImpl();

	public UserNameLoginServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println("username=" + username + " password=" + password);
		Users user = new Users();
		user.setUsername(username);
		user.setPassword(password);
		Users user1 = userService.login(user);
		// System.out.println(user1);

		if (userService.login(user) == null) {
			response.getWriter().print("{\"res\":0}");
		} else {
			response.getWriter().print("{\"res\":1}");
			request.getSession().setAttribute("user", user1);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
