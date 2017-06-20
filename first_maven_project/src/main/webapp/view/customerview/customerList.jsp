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
    
    <title>顾客列表</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">	
	<link href="<%=basePath%>/css/style.css" rel="stylesheet" type="text/css" />
	<style type="text/css">
	.td2{text-align: right;}
 	.table1{
            border:1px solid #ddd;          
        }
        thead{
            background-color:lightblue;
        }
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
    
		<a href="view/customerview/customerAdd.jsp" style="text-decoration: none;font-size:14px;font-weight:bold;color: green;">添加用户</a><br>	
		<p></p>
		<form id="form1" method="post" action="<%=basePath%>customer/showAllCustomer">
			<c:if test="${empty requestScope.pagemsg}">
			没有任何客户信息！
			</c:if>
			<c:if test="${!empty requestScope.pagemsg}">
				<table width="95%" border="1px" cellspacing="0px" cellpadding="10" class="table1" >
					<tr style="background-color:#B2DFEE;border:1px solid #1E90FF;" >
					<th><input type="checkbox" id="SelectAll" onClick="selectAll();"></th>
						<th>客户名称</th>
						<th>客户性别</th>
						<th>所在城市</th>
						<th>客户状态</th>
						<th>客户来源</th>
						<th>成熟度</th>
						<th>手机号</th>
						<th>工作单位名称</th>						
						<th>行业</th>
						<th>Edit</th>
						<th>Delete</th>
					</tr>
					<c:forEach items="${requestScope.pagemsg.lists}" var="cu">
						<tr>
							<td><input type="checkbox" id="check"
		                                    name="check" value="${cu.id }"></td>
					     	<td>${cu.name}</td>
					     	<td>${cu.sex}</td>
					     	<td>${cu.city}</td>
					     	<td>${cu.status}</td>
					     	<td>${cu.source}</td>
					     	<td>${cu.maturity}</td>
					     	<td>${cu.phone}</td>
					     	<td>${cu.company}</td>				     	
					     	<td>${cu.industry}</td>
					     	<td>				     		
					     		<a href="<%=basePath%>customer/toEditCustomer?id=${cu.id}" style="font-size:14px;font-weight:bold;color: green; text-decoration: none">详细</a>
					     	</td>
					     	<td>
					     		<a href="<%=basePath%>customer/deleteCustomer?id=${cu.id}" onclick="alert('真的要删除这个offer吗!');return confirm('返回offer列表...')" style="font-size:14px;font-weight:bold;color: red; text-decoration: none ">删除</a>
					     	</td>	
						</tr>
					</c:forEach>				
				</table>
			</c:if>
		</form>
	<input type="submit" value="批量删除" onClick="batchDelete()">
	<!-- 分页功能 start -->
	<table  border="0" cellspacing="0" cellpadding="0"  width="95%">
		<tr>
			<td class="td2">
			   <span>第${requestScope.pagemsg.currPage }/ ${requestScope.pagemsg.totalPage}页</span>&nbsp;&nbsp;
			   <span>总记录数：${requestScope.pagemsg.totalCount }&nbsp;&nbsp;每页显示:${requestScope.pagemsg.pageSize}</span>&nbsp;&nbsp;
			   <span>
			       <c:if test="${requestScope.pagemsg.currPage != 1}">
			           <a href="${pageContext.request.contextPath }/customer/showAllCustomer?currentPage=1">[首页]</a>&nbsp;&nbsp;
			           <a href="${pageContext.request.contextPath }/customer/showAllCustomer?currentPage=${requestScope.pagemsg.currPage-1}">[上一页]</a>&nbsp;&nbsp;
			       </c:if>
			       
			       <c:if test="${requestScope.pagemsg.currPage != requestScope.pagemsg.totalPage}">
			           <a href="${pageContext.request.contextPath }/customer/showAllCustomer?currentPage=${requestScope.pagemsg.currPage+1}">[下一页]</a>&nbsp;&nbsp;
			           <a href="${pageContext.request.contextPath }/customer/showAllCustomer?currentPage=${requestScope.pagemsg.totalPage}">[尾页]</a>&nbsp;&nbsp;
			       </c:if>
			   </span>
			</td>
		</tr>
	</table>
	<!-- 分页功能 End -->
		
		</div>
  </body>
  <script language="JavaScript" src="<%=basePath%>/js/jquery.js"></script>
	<script type="text/javascript">
		
		/* 全选  */
		function selectAll(){
	        if ($("#SelectAll").is(":checked")) {
	            $(":checkbox").prop("checked", true);//所有选择框都选中
	        } else {
	            $(":checkbox").prop("checked", false);
	        }
	    }
	     /*   批量删除   */
       function batchDelete(){
       		alert("开始删除");
			if(confirm("真的要删除这批offer吗?")){
				$("#form1").attr("action","<%=basePath%>customer/batchDelete");
				$("#form1").submit();	
			}
		}
	 </script>
</html>
