<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登录界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

	<link type="text/css" href="<%=basePath %>css/bootstrap.min.css" rel="stylesheet"/>
	<link type="text/css" href="<%=basePath %>css/signin.css" rel="stylesheet"/>
	<!--<style type="text/css">
	body {
		background:url(images/login_bg_0.jpg) #f8f6e9;
	}
	</style>

    --></head>

<body>

 <div class="signin" style="text-align:center;" >
	<div class="signin-head"><img src="images/test/head_120.png" alt="Ryan" class="img-circle"></div>
	<form class="form-signin" name="form1" action="<%=basePath%>user/login" method="post">
		<input name="userName" type="text" class="form-control" placeholder="用户名" required autofocus /><br>
		<input name="userPassword" type="password" class="form-control" placeholder="密码" required /><br>
		<button class="btn btn-lg btn-warning btn-block" type="submit">登录</button><br>
		<!--<label class="checkbox">
			<input type="checkbox" value="remember-me"> 记住我
		</label>-->
	</form>
	<div style="text-align:center;font-size: 18px;"><a href="view/loginview/registerUser.jsp">注册</a></div>
</div>


 <div style="text-align:center;">
 
	<p>来源:<a href="http://my.csdn.net/my/mycsdn" target="_blank">版权所有  2016@Ryan</a></p>
 </div>  
         
</body>
</html>
