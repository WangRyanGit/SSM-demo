<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>欢迎界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="<%=basePath%>/css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="<%=basePath%>/js/jquery.js"></script>
    <script type="text/javascript"> 
		//页面上动态时间 
		function time() { 
			var dt; 
			var date = new Date(); 
			dt = date.getFullYear() + "/" + date.getMonth() + "/" + date.getDate() 
			+ " " 
			+ (date.getHours() <= 9 ? '0' + date.getHours() : date 
			.getHours()) 
			+ ":" 
			+ ((date.getMinutes() <= 9 ? '0' + date.getMinutes() : date 
			.getMinutes())) 
			+ ":" 
			+ (date.getSeconds() <= 9 ? '0' + date.getSeconds() : date 
			.getSeconds()); 
			return dt; 
		} 
		setInterval("document.getElementById('day').innerHTML=time()", 1000); 
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
       
    <div class="welinfo">
    <span><img src="images/main/sun.png" alt="天气" /></span>
    <b>Admin早上好，欢迎来到自由家园</b>
    <a href="view/updateUser.jsp" target="_parent">帐号设置</a>
    </div>
    
    <div class="welinfo">
    <span><img src="images/main/time.png" alt="时间" /></span>
    <i id="day"></i>
    </div>
      
    </div>
  </body>
</html>
