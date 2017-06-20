<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>添加客户</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
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
	<form action="<%=basePath%>customer/addCustomer" method="post">
	<!-- 字段与customer类中的属性保持一致，不然不会自动装配！-->
	<div class="tableBox">
		<table width="80%" border="0px" cellspacing="0px" cellpadding="0" style="border-collapse:collapse;">
		   <tr style="background-color:#B2DFEE;border:0px solid #1E90FF;height: 30px">
		       <th>获得客户时间</th>    
		       <th>客户名称</th>
		       <th>性别</th>
		       <th>所在城市</th>
		       <th>邮箱</th>
		       <th>手机号</th>
		       <th>客户类别</th>
		       <th>客户状态</th>
		       <th>客户等级</th>
		       <th>客户来源</th>
		       <th>成熟度</th>
		       <th>工作单位名称</th>
		       <th>公司地址</th>
		       <th>行业</th>
		       <th>公司座机</th>
		       <th>客户介绍</th>
		   </tr>
		   <tr >	      
		      <td>
		      <input type="text" id="datetimepicker2" name="created_at" placeholder="创建日期" required autofocus />
		      </td>		      
		      <td><input  type="text" name="name"/></td> 
		      <td><select id="sex" name="sex">
					    <option value="" selected="selected">请选择...</option>
					    <option value="男">男</option>
					    <option value="女">女</option>
				    </select>
			  </td> 
		      <td><select id="city" name="city">
					    <option value="" selected="selected">请选择...</option>
					    <option value="北京">北京</option>
					    <option value="天津">天津</option>
					    <option value="上海">上海</option>
					    <option value="深圳">深圳</option>
					    <option value="广州">广州</option>
					    <option value="重庆">重庆</option>
					    <option value="杭州">杭州</option>
					    <option value="石家庄">石家庄</option>
				    </select>		      
		      </td>  
		      <td><input  type="text" name="mail"/></td> 
		      <td><input  type="text" name="phone"/></td>
		      <td><select id="type" name="type">
					    <option value="普通客户" selected="selected">普通客户</option>
					    <option value="VIP客户">VIP客户</option>
					    <option value="老客户">老客户</option>
					    <option value="代理商">代理商</option>
					    <option value="供应商">供应商</option>
					    <option value="其他">其他</option>
				    </select>  
		      </td>
		      <td><select id="status" name="status">
					    <option value="潜在客户" selected="selected">潜在客户</option>
					    <option value="意向客户">意向客户</option>
					    <option value="成交客户">成交客户</option>
					    <option value="失败客户">失败客户</option>
					    <option value="已流失客户">已流失客户</option>
				    </select>
		      </td>
		      <td><select id="degree" name="degree">
					    <option value="" selected="selected"></option>
					    <option value="★">★</option>
					    <option value="★★">★★</option>
					    <option value="★★★">★★★</option>
					    <option value="★★★★">★★★★</option>
					    <option value="★★★★★">★★★★★</option>
				    </select>
		      </td>
		      <td><select id="source" name="source">
					    <option value="其他" selected="selected">其他</option>
					    <option value="电子商务">电子商务</option>
					    <option value="会员注册">会员注册</option>
					    <option value="朋友介绍">朋友介绍</option>
					    <option value="公共场合">公共场合</option>
				    </select>
		      </td>
		      <td><select id="maturity" name="maturity">
					    <option value="" selected="selected"></option>
					    <option value="A:明确成交意向">A:明确成交意向</option>
					    <option value="B:有初步成交意向">B:有初步成交意向</option>
					    <option value="C:意向不明确">C:意向不明确</option>
					    <option value="D:明显拒绝">D:明显拒绝</option>
					    <option value="E:无效客户">E:无效客户</option>
				    </select>
		      </td>
		      <td><input  type="text" name="company"/></td>
		      <td><input  type="text" name="address" /></td>
		      <td><select id="industry" name="industry">
					    <option value="" selected="selected"></option>
					    <option value="电工电气">电工电气</option>
					    <option value="新零售">新零售</option>
					    <option value="电子商务">电子商务</option>
					    <option value="房地产">房地产</option>
					    <option value="石油化工">石油化工</option>
					    <option value="生活服务">生活服务</option>
					    <option value="银行">银行</option>
					    <option value="风险投资">风险投资</option>
				    </select>
		      </td>
		      <td><input  type="text" name="telphone" /></td>
		      <td><input  type="text" name="infomation" /></td>		      
		   </tr>
	   </table>
	   </div>
    <input type="submit" value="添加"/>
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
