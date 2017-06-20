<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>编辑客户信息</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="<%=basePath%>/css/style.css" rel="stylesheet" type="text/css" />
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
     <div>		
	     <input type="hidden" name="id" value="${customer.id }" /> <br>
        获得时间：<input type="text" name="created_at" value="${customer.created_at }" id="mydate" readonly="readonly" /> <br>
        <p></p>
        客户名称：<input type="text" name="name" value="${customer.name }" /> &nbsp;&nbsp;&nbsp;&nbsp;
        客户性别： <select id="sex" name="sex">
					    <option value="${customer.sex }" selected="selected">${customer.sex }</option>
					    <option value="男">男</option>
					    <option value="女">女</option>
				    </select><br> 
		<p></p>		     
        所在城市：<select id="city" name="city">
					    <option value="${customer.city }" selected="selected">${customer.city }</option>
					    <option value="北京">北京</option>
					    <option value="天津">天津</option>
					    <option value="上海">上海</option>
					    <option value="深圳">深圳</option>
					    <option value="广州">广州</option>
					    <option value="重庆">重庆</option>
					    <option value="杭州">杭州</option>
					    <option value="石家庄">石家庄</option>
				    </select><br>
		<p></p>		    
        手机号码：<input type="text" name="phone" value="${customer.phone }" />  &nbsp;&nbsp;&nbsp;&nbsp;    
        联系邮箱：<input type="text" name="mail" value="${customer.mail }" /> <br>
       <p></p>
        客户级别：<select id="type" name="type">
					    <option value="${customer.type }" selected="selected">${customer.type }</option>
					    <option value="普通客户">普通客户</option>
					    <option value="VIP客户">VIP客户</option>
					    <option value="老客户">老客户</option>
					    <option value="代理商">代理商</option>
					    <option value="供应商">供应商</option>
					    <option value="其他">其他</option>
				    </select>   &nbsp;&nbsp;&nbsp;&nbsp;
        客户状态：<select id="status" name="status">
					    <option value="${customer.status }" selected="selected">${customer.status }</option>
					    <option value="潜在客户">潜在客户</option>
					    <option value="意向客户">意向客户</option>
					    <option value="成交客户">成交客户</option>
					    <option value="失败客户">失败客户</option>
					    <option value="已流失客户">已流失客户</option>
				    </select><br>
        <p></p>
        客户等级：<select id="degree" name="degree">
					    <option value="${customer.degree }" selected="selected">${customer.degree }</option>
					    <option value="★">★</option>
					    <option value="★★">★★</option>
					    <option value="★★★">★★★</option>
					    <option value="★★★★">★★★★</option>
					    <option value="★★★★★">★★★★★</option>
				    </select>&nbsp;&nbsp;&nbsp;&nbsp;
        客户来源：<select id="source" name="source">
					    <option value="${customer.source }" selected="selected">${customer.source }</option>
					    <option value="其他">其他</option>
					    <option value="电子商务">电子商务</option>
					    <option value="会员注册">会员注册</option>
					    <option value="朋友介绍">朋友介绍</option>
					    <option value="公共场合">公共场合</option>
				    </select><br>
   		<p></p>
        成&nbsp;熟&nbsp;度： <select id="maturity" name="maturity">
					    <option value="${customer.maturity }" selected="selected">${customer.maturity }</option>
					    <option value="A:明确成交意向">A:明确成交意向</option>
					    <option value="B:有初步成交意向">B:有初步成交意向</option>
					    <option value="C:意向不明确">C:意向不明确</option>
					    <option value="D:明显拒绝">D:明显拒绝</option>
					    <option value="E:无效客户">E:无效客户</option>
				    </select>&nbsp;&nbsp;&nbsp;&nbsp;
        工作单位：<input type="text" name="company" value="${customer.company }" /><br>
        <p></p>
        工作行业： <select id="industry" name="industry">
					    <option value="${customer.industry }" selected="selected">${customer.industry }</option>
					    <option value="电工电气">电工电气</option>
					    <option value="新零售">新零售</option>
					    <option value="电子商务">电子商务</option>
					    <option value="房地产">房地产</option>
					    <option value="石油化工">石油化工</option>
					    <option value="生活服务">生活服务</option>
					    <option value="银行">银行</option>
					    <option value="风险投资">风险投资</option>
				    </select> &nbsp;&nbsp;&nbsp;&nbsp;
        公司座机：<input type="text" name="telphone" value="${customer.telphone }" /> <br>
         <p></p>
        公司地址：<input type="text" name="address" value="${customer.address }" />   <br>
         <p></p>     
        客户介绍：<textarea name="infomation" cols="50" rows="5">${customer.infomation }</textarea><br>
         
        <input type="button" value="编辑" onclick="updateCustomer()" style="font-size:14px;font-weight:bold;color: green;"/> <br> 

		</div>
		
    </form>
    </div>
  </body>
  <script type="text/javascript" src="<%=basePath%>/js/jquery.js"></script>
	<script type="text/javascript">
	function updateCustomer(){
		var form = document.forms[0];
			form.action = "<%=basePath%>customer/updateCustomer";
			form.method = "post";
			form.submit();
		}
	</script>
	<script type="text/javascript">
		var mydateInput = document.getElementById("mydate");
		var date = new Date();
		var dateString = date.getFullYear()+"-"+(date.getMonth()+1)+"-"+date.getDate();
		mydateInput.value=dateString;
	</script>
</html>
