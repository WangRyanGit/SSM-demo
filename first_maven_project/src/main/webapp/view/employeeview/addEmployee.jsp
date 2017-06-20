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
    <title>添加员工</title>    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
	<link href="<%=basePath%>/css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="<%=basePath%>/js/jquery.js"></script>
	<style type="text/css">
	.hang{border:1px solid #1E90FF;background-color:#B2DFEE;height:30px;}
	.lie1{font-size: 14px;font-weight: bold;}
	.lie2{height: 25px;width: 60%;}	
	</style>
  </head>
  
  <body>
  <div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="view/main.jsp" target="_parent">首页</a></li>
    </ul>
    </div>
    
    <div class="mainindex">
	<form action="<%=basePath%>employee/addEmployee" method="POST">
	<!-- 用户名与密码的name必须与Employee类中的属性保持一致，不然不会自动装配！-->
	<table width="80%" border="0" cellspacing="0" cellpadding="0" style="border-collapse:collapse;">
	<tr style="border:1px solid #1E90FF;background-color:#B2DFEE;height:30px;">
		<td colspan="2" align="center" style="font-size: 14px;font-weight: bold;">添加窗口</td>
	</tr>
	<tr class="hang">
       <td align="center"; class="lie1">员工姓名:</td>
       <td><input type="text" name="name" class="lie2">
       </td>
   </tr>
   <tr class="hang">
       <td align="center" class="lie1">员工性别:</td>
       <td><input  type="text" name="sex" class="lie2"/>
       </td>
   </tr>
   <tr class="hang">
       <td align="center" class="lie1">员工年龄:</td>
       <td><input  type="text" name="age" class="lie2"/>
       </td>
   </tr>
   <tr class="hang">
       <td class="lie1" align="center">员工薪水:</td>
       <td><input  type="text" name="salary" class="lie2"/>
       </td>
   </tr>
   <tr class="hang">
       <td class="lie1" align="center">员工住址:</td>
       <td><input  type="text" name="address" class="lie2"/>
       </td>
   </tr>
   <tr style="border:1px solid #1E90FF;height:30px;">
     <td align="center">
       <a onclick="alert('添加信息!');return confirm('返回显示界面...')" ><input type="submit" name="submit" value="添加" style="font-size:14px;font-weight:bold;color: green; "/></a>
       </td>
     <td align="center">
       <input type="reset" name="reset" value="清空" style="font-size:14px;font-weight:bold;color: red;" />
     </td>
   </tr>
   </table>
	</form>
	</div>
	 
  </body>
</html>
