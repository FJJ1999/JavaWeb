package com.fjj.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import web02.DBUtil;


@WebServlet("/register_do")
public class RegiserServlet extends HttpServlet {


	//Git请求调用
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	//Post请求调用
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		int age = Integer.parseInt(request.getParameter("age"));
		String sex = new String(request.getParameter("sex").getBytes("iso-8859-1"),"utf-8");//因为开始创建时的编码问题，需要获取原始编码修改为utf-8编码格式

		boolean isSuccess = DBUtil.addUser(username, password, age, sex);
		if(isSuccess){
			request.setAttribute("message", "注册成功请登录！");
			request.getRequestDispatcher("login.jsp").forward(request, response);//请求的转发，a请求b，b传递给c，c返回给a
		}else{
			request.setAttribute("message", "注册失败,用户名已存在！");
			request.getRequestDispatcher("register.jsp").forward(request, response);
		}
	}

}
