package com.meizu.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.meizu.po.NetWork;
import com.meizu.service.AdminService;
import com.meizu.service.impl.AdminServiceImpl;
import com.sun.xml.internal.bind.v2.model.core.ID;

/**
 * Servlet implementation class NetModifyServlet
 */
public class NetModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AdminService as = new AdminServiceImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action != null && "add".equals(action)) {
			NetWork netWork = new NetWork();
			String netname = request.getParameter("netname");

			netWork.setNetname(netname);

			as.addNet(netWork);

		} else if (action != null && "update".equals(action)) {
			NetWork netWork = new NetWork();
			String netname = request.getParameter("netname");
			int id = Integer.parseInt(request.getParameter("id"));

			netWork.setNetname(netname);
			netWork.setNetworkid(id);
			as.updateNet(netWork);
		} else if (action != null && "delete".equals(action)) {
			int id = Integer.parseInt(request.getParameter("id"));
			int result = as.deleteNet(id);
		}
		response.sendRedirect("NetQueryServlet");

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
