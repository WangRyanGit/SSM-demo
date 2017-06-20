<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
    <title>员工列表</title>
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
    <span style="padding-left: 52px;padding-bottom:10px; font-size:14px;font-weight: bold;color: #1C86EE; "><a href="<%=basePath%>employee/toaddEmployee">添加员工</a></span> 
    <form id="form1" method="post" action="<%=basePath%>employee/getAllEmployee"> 	
     	<c:if test="${empty requestScope.pagemsg}">
			没有任何客户信息！
			</c:if>
			<c:if test="${!empty requestScope.pagemsg}">
		    <table width="95%" border="0" cellspacing="0" cellpadding="0" style="border-collapse:collapse;">   
	            <tr style="border:1px solid #1E90FF;background-color:#B2DFEE;height:30px;"> 
	            <th><input type="checkbox" id="SelectAll" onClick="selectAll();"></th>
	                <th>姓名</th>  
	                <th>性别</th>
	                <th>年龄</th>
	                <th>薪水</th>
	                <th>地址</th>
	                <th>操作</th>  
	            </tr>  
                <c:forEach items="${requestScope.pagemsg.lists}" var="employee">  
                    <tr style="height:25px;" align="center"> 
                    <td><input type="checkbox" id="check"
		                                    name="check" value="${employee.id }"></td>
                        <td>${employee.name }</td>  
                        <td>${employee.sex }</td>
                        <td>${employee.age }</td>  
                        <td>${employee.salary }</td> 
                        <td>${employee.address }</td>
                        <td>  
                            <a href="<%=basePath%>employee/getEmployee?id=${employee.id}" style="font-size:14px;font-weight:bold;color: green;">编辑</a>
                            <a href="<%=basePath%>employee/deleteEmployee?id=${employee.id}" onclick="alert('删除信息!');return confirm('返回显示界面...')" style="font-size:14px;font-weight:bold;color: red;">删除</a>  
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
			           <a href="${pageContext.request.contextPath }/employee/getAllEmployee?currentPage=1">[首页]</a>&nbsp;&nbsp;
			           <a href="${pageContext.request.contextPath }/employee/getAllEmployee?currentPage=${requestScope.pagemsg.currPage-1}">[上一页]</a>&nbsp;&nbsp;
			       </c:if>
			       
			       <c:if test="${requestScope.pagemsg.currPage != requestScope.pagemsg.totalPage}">
			           <a href="${pageContext.request.contextPath }/employee/getAllEmployee?currentPage=${requestScope.pagemsg.currPage+1}">[下一页]</a>&nbsp;&nbsp;
			           <a href="${pageContext.request.contextPath }/employee/getAllEmployee?currentPage=${requestScope.pagemsg.totalPage}">[尾页]</a>&nbsp;&nbsp;
			       </c:if>
			   </span>
			</td>
		</tr>
	</table>
	<!-- 分页功能 End -->
		
    </div>
  </body>
    <script type="text/javascript" src="<%=basePath%>/js/jquery.js"></script>
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
				$("#form1").attr("action","<%=basePath%>/employee/batchDelete");
				$("#form1").submit();	
			}
		}
	 </script>
</html>
