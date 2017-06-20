<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
request.setCharacterEncoding("utf-8");
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zh-CN">
  <head>
    <base href="<%=basePath%>">
    
    <title>编辑界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
	<link href="<%=basePath%>/css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="<%=basePath%>/js/jquery.js"></script>
	<script type="text/javascript">  
    function updateEmployee(){  
        var form = document.forms[0];  
        form.action = "<%=basePath%>employee/updateEmployee";  
        form.method="post";  
        form.submit();  
    }  
	</script>

  </head>
  
  <body>
  <div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="view/main.jsp" target="_parent">首页</a></li>
    </ul>
    </div>
    <div class="mainindex">
    <h3 align="center" style="font-size: 16px;font-weight: bold;">编辑社员 </h3>
    <form action="" name="employeeForm" style="font-size: 14px;font-weight: bold;" >  
         <input type="hidden" name="id" value="${employee.id }" /> 
        姓名：<input type="text" name="name" value="${employee.name }" />  
        性别：<input type="text" name="sex" value="${employee.sex }" />  
        年龄：<input type="text" name="age" value="${employee.age }" />  
        薪水：<input type="text" name="salary" value="${employee.salary }" />  
        地址：<input type="text" name="address" value="${employee.address }" />  
        <input type="button" value="编辑" onclick="updateEmployee()" style="font-size:14px;font-weight:bold;color: green;";/> <br> 
    </form>
    </div>
  </body>
</html>
