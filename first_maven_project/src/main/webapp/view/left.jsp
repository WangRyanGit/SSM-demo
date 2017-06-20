<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>左侧导航栏</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="icon" href="<%=basePath%>/images/favicon.ico">
	<link href="<%=basePath%>/css/style.css" rel="stylesheet" type="text/css" />
	

  </head>
  
  <body style="background:#f0f9fd;">
	<div class="lefttop"><span></span>通讯录</div>
    
    <dl class="leftmenu">
        
    <dd>
    <div class="title">
    <span><img src="images/main/leftico01.png" /></span>首页
    </div>
    	<ul class="menuson">
        <li><cite></cite><a href="view/right.jsp" target="rightFrame">欢迎界面</a><i></i></li>
        <li><cite></cite><a href="view/welcome.jsp" target="rightFrame">每日简报</a><i></i></li>
        <li><cite></cite><a href="view/welcome.jsp" target="rightFrame">DailyPaper</a><i></i></li>
        </ul>    
    </dd>
        
    
    <dd>
    <div class="title">
    <span><img src="images/main/leftico02.png" /></span>社员信息
    </div>
    <ul class="menuson">
        <li><cite></cite><a href="view/employeeview/addEmployee.jsp" target="rightFrame">添加社员</a><i></i></li>
        <li><cite></cite><a href="<%=basePath%>employee/getAllEmployee" target="rightFrame">显示所有</a><i></i></li>
        <li><cite></cite><a href="view/employeeview/likeNameEmployee.jsp" target="rightFrame">查询社员</a><i></i></li>
        </ul>     
    </dd> 
    
    
    <dd><div class="title"><span><img src="images/main/leftico03.png" /></span>API业务</div>
    <ul class="menuson">     
        <li><cite></cite><a href="<%=basePath%>offer/list" target="rightFrame">显示所有</a><i></i></li>
        <li><cite></cite><a href="view/offerview/offerAdd.jsp" target="rightFrame">添加Offer</a><i></i></li>
    </ul>    
    </dd>  
    
    
    <dd><div class="title"><span><img src="images/main/leftico04.png" /></span>客户无忧</div>
    <ul class="menuson">
        <li><cite></cite><a href="<%=basePath%>customer/showAllCustomer" target="rightFrame">我的客户</a><i></i></li>
        <li><cite></cite><a href="view/customerview/customerAdd.jsp" target="rightFrame">添加客户</a><i></i></li>
    </ul>
    
    </dd>   
    
    </dl>
    
    <script language="JavaScript" src="<%=basePath%>/js/jquery.js"></script>
	<script type="text/javascript">
	$(function(){	
		//导航切换
		$(".menuson li").click(function(){
			$(".menuson li.active").removeClass("active")
			$(this).addClass("active");
		});
		
		$('.title').click(function(){
			var $ul = $(this).next('ul');
			$('dd').find('ul').slideUp();
			if($ul.is(':visible')){
				$(this).next('ul').slideUp();
			}else{
				$(this).next('ul').slideDown();
			}
		});
	})	
	</script>
</body>
</html>
