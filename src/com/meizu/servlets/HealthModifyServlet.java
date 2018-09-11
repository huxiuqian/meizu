package com.meizu.servlets;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.meizu.po.Health;
import com.meizu.service.AdminService;
import com.meizu.service.impl.AdminServiceImpl;

/**
 * Servlet implementation class HealthModifyServlet
 */
public class HealthModifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AdminService as = new AdminServiceImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		String action = request.getParameter("action");
		if (action != null && "add".equals(action)) {
			PrintWriter out1 = response.getWriter();
			// 1. 得到 FileItem 的集合 items
			DiskFileItemFactory factory = new DiskFileItemFactory();
			// Set factory constraints
			factory.setSizeThreshold(1024 * 500);
			// Create a new file upload handler
			ServletFileUpload upload = new ServletFileUpload(factory);
			// Set overall request size constraint
			upload.setSizeMax(1024 * 1024 * 5);
			upload.setHeaderEncoding("UTF-8");
			// 属性列表
			Map<String, Object> lists = new HashMap<>();
			// 照片路径
			String imgPath = null;
			try {
				// 解析request
				List<FileItem> items = upload.parseRequest(request);
				// 遍历每一个元素，
				for (FileItem item : items) {
					if (item.isFormField()) { // 如果该元素是一个 表单元素
						// System.out.println(item.getFieldName());
						String myitem = new String(item.getString().getBytes("ISO-8859-1"), "utf-8");
						lists.put(item.getFieldName(), myitem);
					} else { // 上传的 文件元素
						String fileName = item.getName();
						String realDir = request.getSession().getServletContext().getRealPath("");
						// D:\Users\Administrator\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\new_sfc
						String filePath = "img/phone";
						String realPath = realDir + "\\" + filePath;
						// 判断路径是否存在，不存在则创建
						File dir = new File(realPath);
						if (!dir.isDirectory()) {
							dir.mkdir();
						}
						String realFileName = new Date().getTime()
								+ fileName.substring(fileName.lastIndexOf("."), fileName.length());
						String url = realPath + "\\" + realFileName;
						imgPath = "/img/phone/" + realFileName;
						InputStream in = item.getInputStream();
						byte[] buffer = new byte[1024];
						int len = 0;
						OutputStream out = new FileOutputStream(url);
						while ((len = in.read(buffer)) != -1) {
							out.write(buffer, 0, len);
						}
						out.close();
						in.close();
						Health health = new Health();
						try {
							health.setHealthname(lists.get("healthname").toString());
							health.setHealthprice(Integer.parseInt(lists.get("healthprice").toString()));
							health.setHealthcolor(lists.get("healthcolor").toString());
							health.setHealthfunction(lists.get("healthfunction").toString());
							health.setHealthcapacity(lists.get("healthcapacity").toString());
							health.setHealthtypeid(Integer.parseInt(lists.get("healthtypeid").toString()));
							health.setHealthimage(imgPath);

						} catch (NumberFormatException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
						// 添加成功

						if (as.addHealth(health) == 1) {
							out1.print("<script>alert(\"添加成功!\");</script>");
							String path = request.getContextPath() + "/HealthQueryServlet";
							out1.print("<script>window.location.href='" + path + "';</script>");
						} else {
							File file1 = new File(url);
							file1.delete();
							out1.print("<script>alert(\"添加失败!\");</script>");
							out1.println("<script>history.back();</script>");// js语句：输出网页回退语句
						}
					}
				}

			} catch (FileUploadException e) {
				out1.print("<script>alert(\"添加失败!\");</script>");
				out1.println("<script>history.back();</script>");// js语句：输出网页回退语句
				e.printStackTrace();
			}

		} else if (action != null && "delete".equals(action)) {
			int id = Integer.parseInt(request.getParameter("id"));
			PrintWriter out1 = response.getWriter();
			int result = as.deleteHealth(id);
			if (result == 1) {
				out1.print("<script>alert(\"删除成功!\");</script>");
				String path = request.getContextPath() + "/HealthQueryServlet";
				out1.print("<script>window.location.href='" + path + "';</script>");
			} else {
				out1.print("<script>alert(\"删除失败!\");</script>");
				out1.println("<script>history.back();</script>");// js语句：输出网页回退语句
			}
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
