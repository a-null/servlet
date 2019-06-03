<%@ page language="java" import="java.util.*" errorPage="" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录</title>
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
        body{
    
        background-image: url("http://i4.download.fd.pchome.net/t_960x600/g1/M00/07/14/oYYBAFNM_kKIIKlvAAtgfdYKrP8AABd-AA4rpYAC2CV362.jpg");      
        background-size:cover; 
     }
     #login_frame {/*********登录窗*******/
    width: 400px;
    height: 260px;
    padding: 20px;
    position: absolute;
    left: 50%;
    top: 50%;
    margin-left: -200px;/*居中*/
    margin-top: -200px;
    background-image:url("http://img.pptjia.com/image/20171130/a8b13a4a8f3312858b05a9f329a74f2e_thumb.jpg");/****登录窗口背景***/
    /*background-color: rgba(240, 255, 255, 0.62);/*****背景颜色且加透明效果**/
    background-size: 100%;/****图片适应登录框*******/
    opacity:0.6;/*****透明*******/
    border-radius: 10px;/*圆角边框*/
    text-align: center;
}
 
form p > * {/***********让输入框和label对齐居中****/
    display: inline-block;
    vertical-align: middle;
}
 
#image_logo {
    margin-top: 5px;
  /*opacity:0.042;/*************图片透明*******/
}


.label_input {/***输入设置****/
    font-size: 14px;
    font-family: 宋体;
 
    width: 65px;
    height: 27.5px;
    line-height: 28px;/*行高*/
    text-align: center;
    margin-top:10;/*对象上边外延边距*/
    color: white;/****文字颜色***/
    background-color: #3CD8FF;/****用户名、密码文字背景颜色***/
    border-top-left-radius: 5px;
    border-bottom-left-radius: 5px;
    
}
 
.text_field {/****输入框*****/
    width: 278px;
    height: 27.8px;
    margin-top:10;
    border-top-right-radius: 5px;
    border-bottom-right-radius: 5px;
    border: 0;
}
 
#btn_login {/**登录按钮****/
    font-size: 14px;
    font-family: 宋体;
 
    width: 80px;
    height: 28px;
    line-height: 25px;
    text-align: center;
    margin-right:10px;
    color: white;
    background-color: #3BD9FF;
    border-radius: 6px;
    border: 0;
    float: left;
}
#btn_back {/**取消****/
    font-size: 14px;
    font-family: 宋体;
    width: 80px;
    height: 28px;
    line-height: 28px;
    text-align: center;
    color: white;
    background-color: #3BD9FF;
    border-radius: 6px;
    border: 0;
}

#register {
    font-size: 14px;
    color: red;
    text-decoration: none;
    position: relative;
    float: right;
    
 
}
 
#register:hover {
    color: blue;
    text-decoration: underline;
}
 
#login_control {
    padding:10px 0 0 25px;
}
#checkUserNameResult{
   font-size: 14px;    
   color: red
} 
#checkPasswordResult{
    
    
    font-size: 14px;
    color: red

}   
</style>
<div id="login_frame">
 
    <p id="image_logo" ></p>
 
    <form method="post" action="MainServlet" onsubmit="return validation();">
        
        <p><label class="label_input">用户名</label><input type="text" name="username"  id="username" class="text_field"  placeholder="请输入用户名" style="border:1px solid #3BD9FF"/>
          <lable id="checkUserNameResult" ></lable></p>
            
        <!--  </span><br/>-->
        <p><label class="label_input">密码</label><input type="password" name="password" id="password" class="text_field"  placeholder="请输入密码" style="border:1px solid #3BD9FF"/>
            <span id="checkPasswordResult"   ></span></p>
         
        <div id="login_control">
            <input type="submit" id="btn_login"  value="登录"/>
            <input type="reset" id="btn_back" value="取消"/>
            <a id="register" href="Rigster.jsp" >注册</a><!-- /*使用<a></a>来建立超链接*/ -->
        </div>
    </form>
</div>
  </body>
</html>
<script type="text/javascript"> 
function validation() {
    var username= document.getElementById('username').value;          
    var password= document.getElementById('password').value;    
    if(username == '') {
       var checkUserNameResult = document.getElementById("checkUserNameResult");
        checkUserNameResult.innerHTML = "用户名不能为空";
        return false;
    }
 
   if(password== '') {
        var checkPasswordResult = document.getElementById("checkPasswordResult");
        checkPasswordResult.innerHTML = "密码不能为空";
        return false;
    }
}
//取出传回来的参数error并与yes比较
  var errori ='null';
  if(errori=='yes'){
   alert("登录失败!请重新登录！");
  }
</script>
