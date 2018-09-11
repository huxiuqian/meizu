package com.meizu.servlets;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meizu.service.AdminService;
import com.meizu.service.impl.AdminServiceImpl;

/**
 * Servlet implementation class HealthQueryServlet
 */
public class HealthQueryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AdminService as = new AdminServiceImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Map<String, Object>> healthList = as.getAllHealthList();
		request.setAttribute("healthList", healthList);
		request.getRequestDispatcher("admin/health.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	}

}
