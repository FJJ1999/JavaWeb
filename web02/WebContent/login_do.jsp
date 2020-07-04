<%@page import="com.fjj.module.User"%>
<%@page import="web02.DBUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <% --%>
// String username = request.getParameter("username");
// String password = request.getParameter("password");

// User user = DBUtil.verifyAccount(username, password);
// if(user==null){
// // 	out.println("登录失败，用户名或密码错误！");

// 	request.setAttribute("message", "<font color='red'>登录失败，用户名或密码错误</font>");

// }else{
// // 	out.println("登陆成功");
// 	int number = 0;
// 	if(application.getAttribute("userNumber")!=null){//通过application获取当前登录数是否为空
// 		number = (Integer) application.getAttribute("userNumber");
// 	}
// 	number++;
	
// 	application.setAttribute("userNumber", number);//将当前登录数存储到userNumber中,以便访问

// 	session.setAttribute("user", user);//将用户存储到session中，可以在任何页面进行直接访问
// 	request.getRequestDispatcher("personCenter.jsp").forward(request, response);
	
// }
<%-- %> --%>
</body>
</html>