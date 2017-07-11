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

import com.neu.service.usersInfoService;
/**
 * Servlet implementation class UsersLoginServlet
 */
@WebServlet("/UsersLoginServlet")
public class UsersLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UsersLoginServlet() {
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
		Map<String,String[]> params=request.getParameterMap();
		usersInfoService service=new usersInfoService();
		
		Map<String,String> map=service.checkLogin(params);
		if(map!=null){
			HttpSession session=request.getSession();
			session.setAttribute("usersmap", map);
			response.sendRedirect("main.html");
		}else{
			response.sendRedirect("error.jsp");
		}

	}

}
