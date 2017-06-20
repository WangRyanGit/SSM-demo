<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>主界面</title>
<link rel="stylesheet" type="text/css" href="css/index.css">
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/jquery.slides.js"></script>

</head>

<body style="background:url(images/login_bg_0.jpg) #f8f6e9">
 <!--<font color="red">欢迎登陆！！！</font><br>
 <a href="view/login.jsp"><input type="submit" name="submit" value="登录"/></a>
-->

<div id="yxh_article">
	<div class="slider_box" id="slider_name"> 
	<div class="mask"></div>
	<ul class="silder_con">	
		<li class="silder_panel">
			<a href="view/loginview/login.jsp" class="f_l" ><img src="images/index/1.jpg" width="600" height="375" title="欢迎登陆"/></a>
		</li> 
		<li class="silder_panel">
			<a href="view/loginview/login.jsp" class="f_l" ><img src="images/index/2.jpg" width="600" height="375" title="欢迎登陆"/></a>
		</li>
		<li class="silder_panel">
			<a href="view/loginview/login.jsp" class="f_l" ><img src="images/index/3.jpg" width="600" height="375" title="欢迎登陆"/></a>
		</li>
		<li class="silder_panel">
			<a href="view/loginview/login.jsp" class="f_l" ><img src="images/index/4.jpg" width="600" height="375" title="欢迎登陆" /></a>
		</li>
	</ul>	
	<div class="silder_intro">
		<h3>铭珠彩湖</h3>
	</div>
	<div class="silder_intro">
		<h3>黄金沙滩</h3>
	</div>
	<div class="silder_intro">
		<h3>中国龙</h3>
	</div>
	<div class="silder_intro">
		<h3>观景摩天轮</h3>
	</div>
	<ul class="silder_nav dec">     		
		<li><a href="#"><img src="images/index/1.jpg" width="110" height="48" /></a></li>
		<li><a href="#"><img src="images/index/2.jpg" width="110" height="48" /></a></li>
		<li><a href="#"><img src="images/index/3.jpg" width="110" height="48" /></a></li>
		<li><a href="#"><img src="images/index/4.jpg" width="110" height="48" /></a></li>    
	</ul>
</div> 

</div>


</body>
</html>