package com.online.shopping;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.demoProject.pojo.*;
import com.demoProject.dao.*;
/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       UserDaoImpl ud=new UserDaoImpl();
     public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session=request.getSession();
		session.invalidate();
		response.sendRedirect("index.jsp");
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session=request.getSession();
		String userName=request.getParameter("uname");
		String pass=request.getParameter("pass");
		
		if(userName!=null && userName.equals("a") && pass.equals("a")) {
			
			session.setAttribute("adminName",userName);
			response.sendRedirect("index.jsp");
			
		}else {
			
			
			boolean b=ud.checkLogin(userName,pass);
			if(b) {
			session.setAttribute("userName",userName);
			response.sendRedirect("index.jsp");
			}else {
				response.sendRedirect("error.jsp");
			}
		}
	}

}
