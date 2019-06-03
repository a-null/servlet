<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="model.User"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录成功！</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
 
  <body>
  <style type="text/css">
   #register {
    font-size: 14px;
    color: red;
    text-decoration: none;
    position: relative;
   }
 
   #register:hover {
    color: blue;
    text-decoration: underline;
   }
  </style>
    ${user.username}恭喜您，登录成功！
    <a id="register" href="login.jsp" >退出</a></td>
  </body>
</html>
