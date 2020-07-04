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
// int age = Integer.parseInt(request.getParameter("age"));
// String sex = new String(request.getParameter("sex").getBytes("iso-8859-1"),"utf-8");//因为开始创建时的编码问题，需要获取原始编码修改为utf-8编码格式

// boolean isSuccess = DBUtil.addUser(username, password, age, sex);
// if(isSuccess){
// 	request.setAttribute("message", "注册成功请登录！");
// 	request.getRequestDispatcher("login.jsp").forward(request, response);//请求的转发，a请求b，b传递给c，c返回给a
// }else{
// 	request.setAttribute("message", "注册失败,用户名已存在！");
// 	request.getRequestDispatcher("register.jsp").forward(request, response);
// }

<%-- %> --%>


// if(isSuccess){	
<%-- %> --%>
<%-- 	<font color='green'>恭喜！用户：<%=username %>>注册成功</font> --%>
<%-- <% --%>
// }else{
// 	out.println("<font color='red'>注册失败</font>");
// }
<%-- %> --%>

</body>
</html>