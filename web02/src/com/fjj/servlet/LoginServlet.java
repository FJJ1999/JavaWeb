package com.fjj.servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fjj.module.User;

import web02.DBUtil;


@WebServlet("/login_do")
public class LoginServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		User user = DBUtil.verifyAccount(username, password);
		if(user==null){
//		 	out.println("登录失败，用户名或密码错误！");

			request.setAttribute("message", "<font color='red'>登录失败，用户名或密码错误</font>");

		}else{
//		 	out.println("登陆成功");
			int number = 0;
			ServletContext application = this.getServletContext();
			if(application.getAttribute("userNumber")!=null){//通过application获取当前登录数是否为空
				number = (Integer) application.getAttribute("userNumber");
			}
			number++;
			
			application.setAttribute("userNumber", number);//将当前登录数存储到userNumber中,以便访问

			request.getSession().setAttribute("user", user);//将用户存储到session中，可以在任何页面进行直接访问
			request.getRequestDispatcher("personCenter.jsp").forward(request, response);
			
		}
	}

}
