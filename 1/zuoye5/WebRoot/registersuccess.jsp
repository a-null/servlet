<%@ page language="java" import="java.sql.*" errorPage="" pageEncoding="utf-8"%>
<%@ page import="DB.DB"%>
<%@ page import="model.User"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册成功</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <% 
  
  User user=(User)session.getAttribute("user");
      %>
  <body>
    <p> <font color="#CC0033">${user.username}</font>:祝贺您，注册成功！</p>
   3秒后自动返回登陆窗口，如果你不想等待，可以点击这里<a href="login.jsp">返回首页</a>
  <%response.setHeader("Refresh","3;URL=login.jsp");%>
  <p align="center">&nbsp;</p>
  <table width="100%"  border="0" cellspacing="0" cellpadding="0">

  <tr>
  <td height="30" align="center" valign="top">
     </td></tr>
  </table>
  </body>
</html>
