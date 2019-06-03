<%@ page language="java" import="java.util.*" errorPage="" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>用户注册</title>
<style type="text/css">
<!--
.STYLE2 {
font-size: 24px;
font-family: "宋体";
font-weight: bold;
color: #FF0000;
}
.STYLE3 {
font-family: "新宋体";
font-size: 16px;
}
.STYLE4 {color: #FF0000}
.STYLE5 {
font-size: 12px;
line-height: 14px;
text-decoration: none;
}
-->
</style>
<script language ="JavaScript">
<!--
function CheckSubmit()
{
 if( document.registerform.username.value == "" )
  { alert("请输入用户名!"); document.registerform.username.focus(); return false; }
  if( document.registerform.password.value == "" )
   { alert("请输入密码!"); document.registerform.password.focus(); return false; }
return true;
}
var errori ='<%=request.getParameter("error")%>';
  if(errori=='yes'){
   alert("用户名重名！请重新填写");
  }

</script>
</head>
<body>
<div align="center">
<p>请如实填写下面的注册申请单(*为必填项)</p>
<hr width="800" size="0" />
<form name="registerform" id="form1" method="post" action="namerepeatServlet">
<table width="343" border="0">
<tr>
<td><div align="center">用 户 :</div></td>
<td><input name="username" type="text" class="input1" size="20"/>
  <span class="style1" style="color: red">*</span></td>
</tr>
<tr>
<td><div align="center">密&nbsp;码:</div></td>
<td><input name="password" type="password" class="input1" size="20"/>  
<span class="style1" style="color: red">*</span></td>
</tr>
</table>
 <hr width="800" size="0" />
 <table width="294" border="0">
<tr>
<td width="147"><input name="Submit" type="submit" class="button1" value="注册" onclick="return CheckSubmit();" /></td>
<td width="137"><input name="Submit2" type="reset" class="button1" value="清除" /></td>
</tr>
</table></form>
</div>
</body>
</html>