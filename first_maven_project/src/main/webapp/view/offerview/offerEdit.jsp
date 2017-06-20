<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>offer编辑</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<script language="JavaScript" src="<%=basePath%>/js/jquery-1.11.3.min.js"></script>
	<link href="<%=basePath%>/css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="<%=basePath%>/js/jquery.js"></script>
	<script type="text/javascript">
	function updateOffer(){
		var form = document.forms[0];
			form.action = "<%=basePath%>offer/updateOffer";
			form.method = "post";
			form.submit();
		}
	</script>
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
    
    <form action="" name="offerForm">
     <div class="tableBox">
    	<table width="80%" border="1px" cellspacing="0px" cellpadding="0" style="border-collapse:collapse;">
		<tr style="background-color:#B2DFEE;border:1px solid #1E90FF;">
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
			<th>Date</th>
		</tr>
			<tr>
		     	<td><input type="text" name="id" value="${offer.id}" readonly="readonly"/></td>
		     	<td><input type="text" name="type" value="${offer.type}" /></td>
		     	<td><input type="text" name="provider" value="${offer.provider}" readonly="readonly"/></td>
		     	<td><input type="text" name="name" value="${offer.name}" /></td>
		     	<td><input type="text" name="pkg" value="${offer.pkg}" /></td>
		     	<td><input type="text" name="country" value="${offer.country}" /></td>
		     	<td><input type="text" name="click" value="${offer.click}" /></td>
		     	<td><input type="text" name="offerid" value="${offer.offerid}" /></td>
		     	<td><input type="text" name="price" value="${offer.price}" /></td>
		     	<td><input type="text" name="status" value="${offer.status}" /></td>
		     	<td><input type="text" name="created_at" value="${offer.created_at}" readonly="readonly"/></td>
			</tr>
		</table>
		</div>
		<input type="button" value="修改" onclick="updateOffer()" style="font-size:14px;font-weight:bold;color: green;"/> 
		
    </form>
    
    </div>
  </body>
</html>
