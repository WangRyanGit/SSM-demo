<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>顶部导航栏</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="<%=basePath%>/css/style.css" rel="stylesheet" type="text/css" />
	<script language="JavaScript" src="<%=basePath%>/js/jquery.js"></script>
	<script type="text/javascript">
	$(function(){	
		//顶部导航切换
		$(".nav li a").click(function(){
			$(".nav li a.selected").removeClass("selected")
			$(this).addClass("selected");
		})	
	})	
	</script>

  </head>
  
  <body style="background:url(images/main/topbg.gif) repeat-x;">

    <div class="topleft">
    <a href="view/main.jsp" target="_parent"><img src="images/main/xiaozhu.png" title="系统首页" /></a>
    </div>
        
    <ul class="nav">
    <!--<li><a href="#" target="rightFrame" class="selected"><img src="images/main/icon01.png" title="工作台" /><h2>工作台</h2></a></li>
    <li><a href="#" target="rightFrame"><img src="images/main/icon02.png" title="模型管理" /><h2>模型管理</h2></a></li>
    <li><a href="#" target="rightFrame"><img src="images/main/icon03.png" title="模块设计" /><h2>模块设计</h2></a></li>
    <li><a href="#" target="rightFrame"><img src="images/main/icon04.png" title="常用工具" /><h2>常用工具</h2></a></li>
    <li><a href="#" target="rightFrame"><img src="images/main/icon05.png" title="文件管理" /><h2>文件管理</h2></a></li>
    <li><a href="#" target="rightFrame"><img src="images/main/icon06.png" title="系统设置" /><h2>系统设置</h2></a></li>
    --></ul>
            
    <div class="topright">    
    <ul>
    <li><span><img src="images/main/help.png" title="帮助" class="helpimg"/></span><a href="view/welcome.jsp" target="_blank">帮助</a></li>
    <li><a href="#">关于</a></li>
    <li><a href="view/loginview/login.jsp" target="_parent">退出</a></li>
    </ul>
     
    <div class="user">
    <span><a href="view/loginview/updateUser.jsp" target="_parent">修改密码</a></span>
    </div>    
    
    </div>
</body>
</html>
