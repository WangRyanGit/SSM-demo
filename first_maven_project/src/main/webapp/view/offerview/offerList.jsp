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
    
    <title>offer列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<script language="JavaScript" src="<%=basePath%>/js/jquery-1.11.3.min.js"></script>
	<link href="<%=basePath%>/css/style.css" rel="stylesheet" type="text/css" />
	<!--<script type="text/javascript" src="<%=basePath%>/js/jquery.js"></script>-->
	<script type="text/javascript">
		
		/* 全选  */
		function selectAll(){
	        if ($("#SelectAll").is(":checked")) {
	            $(":checkbox").prop("checked", true);//所有选择框都选中
	        } else {
	            $(":checkbox").prop("checked", false);
	        }
	    }
	    
	    /* 删除   */
		function deleteOffer(id){
			if(confirm("真的要删除这个offer吗?")){
				$("#form1").attr("action","<%=basePath%>/offer/deleteOffer?id="+id);
				$("#form1").submit();	
			}
		}
	    
	    /*   批量删除   */
       function batchDelete(){
       		alert("开始删除");
			if(confirm("真的要删除这批offer吗?")){
				$("#form1").attr("action","${pageContext.request.contextPath}/offer/batchDelete");
				$("#form1").submit();	
			}
		}
		
		/*  查询   */
		$("#search").click(function(){
			$("#form").submit();
		});
		
		/*  定义当前页和总页数    */
		$(function(){
			
		    var currentPage=${pages.currentPage};
		    var totalPages=${pages.totalPages};
		 
		    //上一页
			$("#upPage").click(function(){
				
				  var fileName="${fileName}";
				  var search="${search}";
				  
				  if(currentPage==1){
							
						}else{
							
							$("#upPage").attr("href","${pageContext.request.contextPath}/offer/list?page="+(currentPage-1)+"&fileName="+fileName+"&search="+search);	
						}
						
					});
			    
				 //下一页
			$("#nextPage").click(function(){
				
				  var fileName="${fileName}";
				  var search="${search}";
				
					if(currentPage==totalPages){
						
					}else{
						
						$("#nextPage").attr("href","${pageContext.request.contextPath}/offer/list?page="+(currentPage+1)+"&fileName="+fileName+"&search="+search);
						
					}
					
				});
			 //首页
			$("#head").click(function(){
				 var fileName="${fileName}";
				  var search="${search}";
				  
				
					if(currentPage==1){
						
					}else{
						
						$("#head").attr("href","${pageContext.request.contextPath}/offer/list?page=1"+"&fileName="+fileName+"&search="+search);
					}
				});
				 
			//末页
			$("#last").click(function(){
				
				 var fileName="${fileName}";
				  var search="${search}";
				  
				if(currentPage==totalPages){
					
				}else{
					
					$("#last").attr("href","${pageContext.request.contextPath}/offer/list?page="+totalPages+"&fileName="+fileName+"&search="+search);
				}
					
				});
		});
		
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
  
    <div >
			<form action="<%=basePath%>/offer/list" id="form" method="POST">
				<select name="fileName" >
						  <option value="provider" selected="selected">Provider</option>
		                  <option value="pkg" selected="selected" >Pkg</option>
		                  <option value="offerid" selected="selected">OfferId</option>
		        </select>
				<input type="text" name="search" />
				<button type="submit" id="search">查询</button>
			</form>
		</div>

		<a href="view/offerview/offerAdd.jsp" style="text-decoration: none;color: green;font-size: 14px;">添加</a>
		<br/>
		<form id="form1" method="post">
			<div class="tableBox">
			<table width="99%" border="1px" cellspacing="0px" cellpadding="0">
				<tr style="background-color:#B2DFEE;border:1px solid #1E90FF; height: 30px">
				<th><input type="checkbox" id="SelectAll" onClick="selectAll();"></th>
					<th>Id</th>
					<th>Type</th>
					<th>Provider</th>
					<th>Name</th>
					<th>Pkg</th>
					<th>Geo</th>
					<th>OfferId</th>
					<th>Price</th>
					<th>Status</th>
					<th>Date</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
				<c:forEach items="${offer}" var="of">
					<tr style="text-align: center">
						<td><input type="checkbox" id="subcheck"
	                                    name="subcheck" value="${of.id }"></td>
				     	<td>${of.id}</td>
				     	<td>${of.type}</td>
				     	<td>${of.provider}</td>
				     	<td>${of.name}</td>
				     	<td>${of.pkg}</td>
				     	<td>${of.country}</td>
				     	<td>${of.offerid}</td>
				     	<td>${of.price}</td>
				     	<td>${of.status}</td>
				     	<td>${of.created_at}</td>
				     	<td>				     		
				     		<a href="<%=basePath%>offer/load?id=${of.id}" style="font-size:14px;font-weight:bold;color: green; text-decoration: none">详细</a>
				     	</td>
				     	<td>
				     		<!--<a href="javascript:void(0)" onClick="deleteOffer(${of.id})">删除</a>-->
				     		<a href="<%=basePath%>offer/deleteOffer?id=${of.id}" onclick="alert('真的要删除这个offer吗!');return confirm('返回offer列表...')" style="font-size:14px;font-weight:bold;color: red; text-decoration: none ">删除</a>
				     	</td>	
					</tr>
				</c:forEach>
				
			</table>
			
			</div>
			
		</form>
		<!--<a href="javascript:void(0)" onClick="batchDelete()">批量删除</a>-->
		<input type="submit" value="批量删除" onClick="batchDelete()">
			<div>
				<span class="fl pl10">共检测到${pages.count }条记录</span>
				<span class="pr10">
					<a id="head">首页</a>
					<a id="upPage">上一页</a>
					<c:forEach  var="i" begin="1" end="${pages.totalPages }" step="1">
					<a href="<%=basePath%>/offer/list?page=${i}">${i}</a>
					</c:forEach>
					
					<a id="nextPage">下一页</a>
					<a id="last">尾页</a>
				</span>
				
			</div>
			
		</div>
  </body>
</html>
