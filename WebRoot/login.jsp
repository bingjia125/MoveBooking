<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <style>
  
  	#span1{
  		font-family: 宋体;
  		font-size: 40px;
  		font-weight: bold;
  		margin-left: -180px;
  	}
  	#span2{
  		font-family: 方正舒体;
  		font-size: 20px;
  		font-weight: bold;
  		margin-left: 130px;
  	}
  	
  	#div2{
  		margin: 100px;
  	}
  </style>
  
  <body>
  	<div id="div1" align="center">
    		<span id="span1">顺风搬家</span><br>
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="span2">———顺风搬家，一路顺风</span>
    </div>
  
  	<div id="div2" align="center">
  	<h1>欢迎使用顺风搬家管理系统！</h1>
  	 <s:form action="AdminAction" namespace="/admin">
    	<s:textfield name="username" label="用户名"></s:textfield>
    	<s:password name="userpass" label="密码"></s:password>
    	<s:submit value="登录" method="login"  ></s:submit>
     </s:form>
  	</div>   
  </body>
</html>
