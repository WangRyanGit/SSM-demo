<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
  </head>
  
  <body style="background:url(images/login_bg_0.jpg) #f8f6e9">
  <div style="margin-top: 200px;">
	<form action="<%=basePath%>register/adduser" method="POST">
	<!-- 用户名与密码的name必须与User类中的属性保持一致，不然不会自动装配！-->
	<table width="300" border="0" align="center">
	<tr>
		<td colspan="2">注册窗口</td>
	</tr>
	<tr>
       <td>用户名:</td>
       <td><input type="text" name="userName">
       </td>
   </tr>
   <tr>
       <td>密&nbsp;&nbsp;码:</td>
       <td><input  type="password" name="userPassword"/>
       </td>
   </tr>
   <tr>
     <td>
       <a onclick="alert('注册信息!');return confirm('返回登录界面...')"><input type="submit" name="submit" value="提交"/></a>
       </td>
     <td>
       <input type="reset" name="reset" value="清空"/>
     </td>
   </tr>
   </table>
	</form>
	</div>	
  </body>
</html>
