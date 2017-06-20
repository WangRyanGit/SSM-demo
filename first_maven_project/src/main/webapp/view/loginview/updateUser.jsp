<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>更新用户信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="<%=basePath%>/css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="<%=basePath%>/js/jquery.js"></script>

  </head>
  
  <body>

    <div>
    	<form action="register/updateUser" method="post">
    	<input type="hidden" name="userId" value="${user.userId }"/>  
        用户名：<input type="text" name="userName" value="${user.userName }"/>  
        密&nbsp;码:<input type="text" name="userPassword" value="${user.userPassword }"/>  
        <input type="button" value="编辑" onclick="updateEmployee()"/> 
       </form>
    </div>

  </body>
</html>
