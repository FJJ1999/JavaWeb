<%@page import="com.fjj.module.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Object o = session.getAttribute("user");
	if(o!=null){
		User user = (User) o;
		out.println("当前登录用户:"+user.getUsername()+"<br/>");
	}
%>

<%
Object o2 = application.getAttribute("userNumber");
if(o2!=null){
	out.println("当前登录用户数："+o2);
}
%>

<a href="login.jsp">登录</a>
<a href="register.jsp">注册</a>
</body>
</html>