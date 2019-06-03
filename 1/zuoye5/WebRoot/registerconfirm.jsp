<%@ page language="java" import="java.sql.*" errorPage="" pageEncoding="utf-8"%>
<%@ page import="model.User"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>注册信息确认</title>
<body>
<%
    User user=(User) session.getAttribute("user");
%>
<form action="AddServlet" method="post">
<input type="hidden" name="username" value="${user.username}" />
<input type="hidden" name="password" value="${user.password}" />
<div align="center"><b><font size="3">请认真检查下面的注册申请单.</font></b>
<hr width="100%"  />
<table width="414" border="0" cellspacing="2" cellpadding="1"><tbody>
<tr>
<td width="107" align="right"><div align="center">用 户 名:</div></td>
<td width="297" align="left">${user.username}</td></tr>
<tr>
<td width="107" align="right"><div align="center">密&nbsp; 码:</div></td>
<td width="297" align="left">${user.password}</td></tr>
</tbody></table>
<hr />
<table width="200" border="0">
<tr>
<td><input name="Submit" type="submit" class="button1" value="确认" /></td>
<td><input name="Submit2" type="button" class="button1" onclick="backward()" value="返回上一步"/></td>
</tr>
</table></div>


</form>
</body>
</html>