package com.neu.servlet;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.neu.service.UpdateBookService;

/**
 * Servlet implementation class FindByParams
 */
@WebServlet("/FindByParams")
public class FindByParams extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindByParams() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		Map<String, String[]> params=request.getParameterMap();
		UpdateBookService service=new UpdateBookService();
		List<Map<String,String>> list=
				service.findByParams(params);
//		使用服务器提供的会话 在服务器中开辟的 存放数据的 内存地址
		HttpSession session=request.getSession();
//		admins 是我们自己起的名称，用于获取对应的数据
		session.setAttribute("admins", list);
//		session.setAttribute("aaa", "张三");
		response.sendRedirect("shownbook.jsp");
	}

}
