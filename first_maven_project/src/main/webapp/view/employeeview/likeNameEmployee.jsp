<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>模糊查询</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="<%=basePath%>/css/style.css" rel="stylesheet" type="text/css" />
	<script src="<%=basePath%>/js/jquery.js" type="text/javascript"></script>
	<script type="text/javascript">  
    function getEmployeeLikeName(){  
        var form = document.forms[0];  
        form.action = "<%=basePath%>employee/getEmployeeLikeName";  
        form.method="post";  
        form.submit();  
    } 
    
	</script>
  </head>
  
  <body>
  <div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="view/main.jsp">首页</a></li>
    </ul>
    </div>
    <div class="mainindex">
    <form action="<%=basePath%>employee/getEmployeeLikeName" method="POST">
    	<table width="90%" border="0" cellspacing="0" cellpadding="0" style="border-collapse:collapse;">  
        	<tr style="border:1px solid #1E90FF;background-color:#B2DFEE;height:25px;">
        		<td align="center">社员姓名：</td>
        		<td><input type="text" name="name" style="height: 25px;width: 50%;"></td>
        	</tr>
        	<tr>
		  	<td colspan="2"><div align="center">
		  	  <input type="submit" name="submit" value="查询" style="font-size:14px;font-weight:bold;color: green; ">			  	  
		  	  <input type="reset" value="重置"> </div>
	  	 	</td>
		  </tr>           
       </table>
    </form>
    </div>
  </body>
</html>
