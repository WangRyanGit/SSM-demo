<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>bug来了</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
  
  <body style="background:url(images/login_bg_0.jpg) #f8f6e9">
    <div style="font-style: red;font-size: 18px;">
    	登入失败! <br>
       ${message}<br>
    </div>   
    <div style="text-align:center;"><img src='images/login/404.png'/></div>
    <a href="view/loginview/login.jsp">返回</a>
    <a href="view/main.jsp">返回主界面</a>
  </body>
</html>
