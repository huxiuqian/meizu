package com.meizu.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meizu.po.Users;
import com.meizu.service.UsersService;
import com.meizu.service.impl.UsersServiceImpl;

public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UsersService userService = new UsersServiceImpl();

	public RegisterServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setCharacterEncoding("UTF-8");
		String telphone = request.getParameter("telphone");
		String word = request.getParameter("word");
		String code = (String) request.getSession().getAttribute("smsCode" + telphone);
		if (code == null) {
			code = "";
		}
		// 如果此手机号在数据库中不存在，则判断验证码是否正确
		// 手机号存在则提示已注册，可直接登录
		if (userService.findByPhone(telphone) != null) {
			response.getWriter().print("{\"res\":0}");
		}
		if (userService.findByPhone(telphone) == null) {
			if (code == null || "".equals(code)) {
				response.getWriter().print("{\"res\":3}"); // 如果没有发送验证码，则返回-1
			}
			if (code.equals(word)) {
				userService.register(telphone);
				response.getWriter().print("{\"res\":1}"); // 如果输入的验证码和发送的一致，返回1
				Users user = userService.findByPhone(telphone);
				request.getSession().setAttribute("user", user);
			} else {
				response.getWriter().print("{\"res\":2}"); // 如果输入的验证码和发送的不一致，返回0
			}
		}
		request.getSession().removeAttribute("smsCode" + telphone);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
