<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
</head>

<body>
<body>
<%
	String myusername = request.getParameter("name");
		if(myusername.length()>=4) 
			{String mystring = myusername.substring(0,4);
		if(mystring.equalsIgnoreCase("user") )  
		 	out.println("对不起，该用户名已经被注册！请重新输入！");  
		else if(myusername.equalsIgnoreCase("admin"))    
			out.println("欢迎您，管理员！");  
		else    
			out.println("恭喜您，注册成功！"); }  
		else  
			{out.println("恭喜您，注册成功！"); } 
%>
</body>

</body>
</html>