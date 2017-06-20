<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>offerAdd</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="<%=basePath%>/css/style.css" rel="stylesheet" type="text/css" />
	<link href="<%=basePath%>/css/jquery.datetimepicker.css" rel="stylesheet" type="text/css" />
	<style type="text/css"> 
		.tableBox{ width:98%; position:relative; overflow-x:auto; overflow-y:hidden;table-layout:fixed; } 
		.tablebody{ position:absolute; width:300px; height:200px; overflow-y:auto; overflow-x:hidden; top:20px; left:0;} 
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
    
    <form action="<%=basePath%>offer/addOffer" method="post">
    <div class="tableBox">
    	<table width="80%" border="0px" cellspacing="0px" cellpadding="0" style="border-collapse:collapse;">
		<tr style="background-color:#B2DFEE;border:0px solid #1E90FF;height: 30px">
			<th>Id</th>
			<th>Type</th>
			<th>Provider</th>
			<th>Name</th>
			<th>Pkg</th>
			<th>Geo</th>
			<th>click</th>
			<th>OfferId</th>
			<th>Price</th>
			<th>Status</th>
			<th>Create_Date</th>
		</tr>
			<tr>
		     	<td><input type="text" name="id" disabled="disabled"/></td>
		     	<td><input type="text" name="type" /></td>
		     	<td><input type="text" name="provider" /></td>
		     	<td><input type="text" name="name" /></td>
		     	<td><input type="text" name="pkg" /></td>
		     	<td><input type="text" name="country" /></td>
		     	<td><input type="text" name="click" /></td>
		     	<td><input type="text" name="offerid" /></td>
		     	<td><input type="text" name="price" /></td>
		     	<td><input type="text" name="status" /></td>
		     	<td><input type="text" name="created_at" id="datetimepicker2" placeholder="创建日期" required autofocus/></td>
			</tr>
		</table>
		</div>
		<input type="submit" value="添加" />
		
    </form>
    
    </div>
  </body>
  	<script type="text/javascript" src="<%=basePath%>/js/jquery.js"></script>
  	<script type="text/javascript" src="<%=basePath%>/js/jquery.datetimepicker.full.js"></script>
  	<script>
		$.datetimepicker.setLocale('en');
		$('#datetimepicker2').datetimepicker({
			lang:'ch',
			timepicker:false,
			format:'Y-m-d',
			formatDate:'Y/m/d',
			minDate:'-1970/01/02', // yesterday is minimum date
			maxDate:'+1970/01/02' // and tommorow is maximum date calendar			
		});
    </script>
</html>
