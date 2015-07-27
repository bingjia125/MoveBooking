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
    
    <title>My JSP 'main.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<script>
		window.onload=function (){
			var sta = <%=request.getAttribute("sta")%>
			if(sta == 1){
				alert("添加信息成功！");
			}
			if(sta == 2){
				alert("修改信息成功！");
			}
		}
	</script>
  </head>
  
  <style>
  	#div1{
  		
  	}
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
  		margin-top: 100px;
  	}	
  	
  </style>
  
  <body>
    <div id="div1" align="center">
    	<span id="span1">顺风搬家</span><br>
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="span2">———顺风搬家，一路顺风</span>
    </div>
    <div id="div2" align="center">
    	<s:a namespace="/booking" action="enterInsert">预约登记</s:a>
    	<s:a namespace="/booking" action="SelectBooking">查询预约信息</s:a>
    </div>
  </body>
</html>
