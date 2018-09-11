package com.meizu.servlets;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.lang.reflect.Method;
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

import com.meizu.po.NetWork;
import com.meizu.po.Parts;
import com.meizu.po.PartsType;
import com.meizu.po.Phone;
import com.meizu.service.AdminService;
import com.meizu.service.impl.AdminServiceImpl;

/**
 * Servlet implementation class AdminServlet
 */
public class AdminServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private AdminService adminService = new AdminServiceImpl();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String methodName = request.getParameter("action");
		try {
			// 1.利用反射获取methodName对应的方法
			Method method = getClass().getDeclaredMethod(methodName, HttpServletRequest.class,
					HttpServletResponse.class);
			// 2.利用反射调用对应的方法
			method.invoke(this, request, response);
		} catch (Exception e) {
			e.printStackTrace();
			// 出现异常时可以重定向到错误的页面
			// response.sendRedirect("error.jsp");
		}
	}

	/**
	 * 获取所有的网络类型
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void getNetWord(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Map<String, Object>> list = adminService.getAllNetList();
		if (list != null) {
			request.setAttribute("list", list);
			request.getRequestDispatcher("/admin/phone_add.jsp").forward(request, response);

		} else {
			response.sendRedirect("admin/error.jsp");
		}
	}

	private void getPartsType(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<PartsType> list = adminService.getAllPartsType();
		if (list != null) {
			request.setAttribute("list", list);
			request.getRequestDispatcher("/admin/part_add.jsp").forward(request, response);

		} else {
			response.sendRedirect("admin/error.jsp");
		}
	}

	/**
	 * 添加手机
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void addPhone(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
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
					System.out.println(item.getFieldName());
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
					Phone phone = new Phone();
					try {
						phone.setPname(lists.get("pname").toString());
						phone.setPrice(Integer.parseInt(lists.get("price").toString()));
						phone.setSize(lists.get("size").toString());
						phone.setColor(lists.get("color").toString());
						phone.setVersion(lists.get("version").toString());
						phone.setStorage(Integer.parseInt(lists.get("storage").toString()));
						phone.setSystem(lists.get("system").toString());
						phone.setDescribe(lists.get("describe").toString());
						phone.setNetworkid(Integer.parseInt(lists.get("networkid").toString()));
						phone.setImgpath(imgPath);
						// menu.setName(new
						// String(lists.get(0).getBytes("ISO-8859-1"),"utf-8"));

					} catch (NumberFormatException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					// 添加成功

					if (adminService.addPhone(phone) == 1) {
						out1.print("<script>alert(\"添加成功!\");</script>");
						String path = request.getContextPath() + "/AdminServlet?action=getNetWord";
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
	}

	private void addPart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
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
					System.out.println(item.getFieldName());
					String myitem = new String(item.getString().getBytes("ISO-8859-1"), "utf-8");
					lists.put(item.getFieldName(), myitem);
				} else { // 上传的 文件元素
					String fileName = item.getName();
					String realDir = request.getSession().getServletContext().getRealPath("");
					// D:\Users\Administrator\workspace\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\new_sfc
					String filePath = "img/parts";
					String realPath = realDir + "\\" + filePath;
					// 判断路径是否存在，不存在则创建
					File dir = new File(realPath);
					if (!dir.isDirectory()) {
						dir.mkdir();
					}
					String realFileName = new Date().getTime()
							+ fileName.substring(fileName.lastIndexOf("."), fileName.length());
					String url = realPath + "\\" + realFileName;
					imgPath = "/img/parts/" + realFileName;
					InputStream in = item.getInputStream();
					byte[] buffer = new byte[1024];
					int len = 0;
					OutputStream out = new FileOutputStream(url);
					while ((len = in.read(buffer)) != -1) {
						out.write(buffer, 0, len);
					}
					out.close();
					in.close();
					Parts part = new Parts();
					try {
						part.setPartsname(lists.get("partsname").toString());
						part.setPartstypeid(Integer.parseInt(lists.get("partstypeid").toString()));
						part.setPartsprice(Integer.parseInt(lists.get("partsprice").toString()));
						part.setPartscolor(lists.get("partscolor").toString());
						part.setPartsimage(imgPath);
						part.setPartslength(Double.parseDouble(lists.get("partslength").toString()));
						part.setPartsbattery(lists.get("partsbattery").toString());
						// menu.setName(new
						// String(lists.get(0).getBytes("ISO-8859-1"),"utf-8"));

					} catch (NumberFormatException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					// 添加成功

					if (adminService.addParts(part) == 1) {
						out1.print("<script>alert(\"添加成功!\");</script>");
						String path = request.getContextPath() + "/AdminServlet?action=getPartsType";
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

	}

	private void getAllPart(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List partsType = adminService.getAllPartsType();
		List list = adminService.getAllParts();
		if (list != null) {
			request.setAttribute("list", list);
			request.setAttribute("partsType", partsType);
			request.getRequestDispatcher("/admin/part.jsp").forward(request, response);
			;
		} else {
			response.sendRedirect("admin/error.jsp");
		}

	}

	private void getAllPhone(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List list = adminService.getAllPhone();
		if (list != null) {
			request.setAttribute("list", list);
			request.getRequestDispatcher("/admin/phone.jsp").forward(request, response);
			;
		} else {
			response.sendRedirect("admin/error.jsp");
		}

	}

	/**
	 * 根据id获取一个手机
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void getPhoneById(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String phoneIdStr = request.getParameter("phoneid");
		int phoneid = -1;
		try {
			phoneid = Integer.parseInt(phoneIdStr);
		} catch (Exception e) {
			e.printStackTrace();
		}
		Phone phone = adminService.getPhoneById(phoneid);
		List list = adminService.getAllNetList();
		if (phone != null && list != null) {
			request.setAttribute("phone", phone);
			request.setAttribute("list", list);
			request.getRequestDispatcher("/admin/phone_update.jsp").forward(request, response);
			;
		} else {
			response.sendRedirect("admin/error.jsp");
		}
	}

	/**
	 * 根据id删除一个手机
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void deletePhoneById(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out1 = response.getWriter();
		String phoneIdStr = request.getParameter("phoneid");
		int phoneid = -1;
		try {
			phoneid = Integer.parseInt(phoneIdStr);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (adminService.deletePhone(phoneid) == 1) {
			out1.print("<script>alert(\"删除成功!\");</script>");
			String path = request.getContextPath() + "/AdminServlet?action=getAllPhone";
			out1.print("<script>window.location.href='" + path + "';</script>");
			return;
		}
		response.sendRedirect("admin/error.jsp");

	}

	private void deleteParts(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out1 = response.getWriter();
		String partsidStr = request.getParameter("partsid");
		int partsid = -1;
		try {
			partsid = Integer.parseInt(partsidStr);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (adminService.deleteParts(partsid) == 1) {
			out1.print("<script>alert(\"删除成功!\");</script>");
			String path = request.getContextPath() + "/AdminServlet?action=getAllPart";
			out1.print("<script>window.location.href='" + path + "';</script>");
			return;
		}
		response.sendRedirect("admin/error.jsp");

	}

	/**
	 * 更新手机信息
	 * 
	 * @param request
	 * @param response
	 * @throws ServletException
	 * @throws IOException
	 */
	private void updatePhone(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out1 = response.getWriter();
		String phoneidStr = request.getParameter("phoneid");
		int phoneid = -1;
		Phone phone = null;
		try {
			phoneid = Integer.parseInt(phoneidStr);
			phone = adminService.getPhoneById(phoneid);
		} catch (Exception e) {
			e.printStackTrace();
		}
		String pname = request.getParameter("pname");
		String priceStr = request.getParameter("price");
		int price = Integer.parseInt(priceStr);
		String size = request.getParameter("size");
		String version = request.getParameter("version");
		String describe = request.getParameter("describe");
		String imgpath = phone.getImgpath();
		String color = request.getParameter("color");
		String system = request.getParameter("system");
		String networkidStr = request.getParameter("networkid");
		int networkid = Integer.parseInt(networkidStr);
		String storageStr = request.getParameter("storage");
		int storage = Integer.parseInt(storageStr);
		Phone phone1 = new Phone(phoneid, networkid, pname, version, storage, price, describe, imgpath, color, size,
				system);
		if (adminService.updatePhone(phone1) == 1) {
			out1.print("<script>alert(\"修改成功!\");</script>");
			String path = request.getContextPath() + "/AdminServlet?action=getPhoneById&phoneid=" + phoneid;
			out1.print("<script>window.location.href='" + path + "';</script>");
		} else {
			out1.println("<script>history.back();</script>");
		}

	}

}
