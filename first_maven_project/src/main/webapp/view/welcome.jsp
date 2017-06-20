<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <style type="text/css"> 
.Box{ overflow:hidden;} 
.tableBox{ height:200px; width:200px; position:relative; overflow-x:auto; overflow-y:hidden;table-layout:fixed; } 
.tablehead{ position:absolute; width:300px; left:0;} 
.tablebody{ position:absolute; width:300px; height:200px; overflow-y:auto; overflow-x:hidden; top:20px; left:0;} 
td{ width:88px;white-space:normal;} 
table{border-collapse: collapse; border-spacing: 0;margin-left: 5px;margin-right: 5px;table-layout:fixed;} 
</style>
    
    <title>帮助界面</title>
  </head>
  
  <body  >
   <h2>用户信息</h2><br>
	用户名： ${user.userName}<br>
 	密码：${user.userPassword}<br>
 	<font color="red">please call Ryan,skype:410183874@qq.com</font><br>
 	<br>
 	<a href="view/login.jsp">返回</a><br>
 	<a href="view/main.jsp">跳到主页面</a><br>
 	<a href="view/MyHtml.html">跳转到jsoup</a><br>
 	<div><img src="images/login/happynewyear.jpg"/></div>
 	
 	        <pre>
          .----.
       _.'__    `.
   .--($)($$)---/#\
 .' @          /###\
 :         ,   #####
  `-..__.-' _.-\###/
        `;_:    `"'
      .'"""""`.
     /,  new,\\
    //  year! \\
    `-._______.-'
    ___`. | .'___
   (______|______)
        </pre>

 <div class="form-group">
    <label for="exampleInputFile">File input</label>
    <input type="file" id="exampleInputFile">
    <p class="help-block">Example block-level help text here.</p>
  </div>
 	
 	
 	<div class="Box"> 
	<div class="tableBox" > 
	<div class="tablehead"> 
	<table class="head" border="1px"> 
	<tr> 
	<td>姓名</td><td>性别</td><td>年龄</td> 
	</tr> 
	</table> 
	</div> 
	<div class="tablebody"> 
	<table class="body" border="1px" > 
	<tr><td>小明</td><td>男</td><td>12</td></tr> 
	<tr><td>小明</td><td>男</td><td>12</td></tr> 
	<tr><td>小明</td><td>男</td><td>12</td></tr> 
	</table> 
	</div> 
	</div> 
	</div> 
 	
 	
  </body>
</html>
