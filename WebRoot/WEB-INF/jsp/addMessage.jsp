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
    
    <title>My JSP 'addMessage.jsp' starting page</title>
    
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
  		margin-top: 100px;
  	}	
  </style>
  <body>
    <div id="div1" align="center">
    	<span id="span1">顺风搬家预约登记</span><br>
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="span2">———顺风搬家，一路顺风</span>
    </div>
    
    <div id="div2" align="center">
    	<table>
    		<s:form namespace="/booking" action="BookingAction" >
    			<s:select name="area" list="#{1:'和平区',2:'铁西区',3:'沈河区',4:'大东区',5:'皇姑区',6:'浑南新区'}" label="起始地区" required="true"></s:select>
    			<s:checkboxlist name="cartype" list="#{1:'金杯',2:'皮卡',3:'厢式货车',4:'1041货车',5:'倒骑驴'}" listKey="key" listValue="value" value="{1}" label="所用车型" required="true"></s:checkboxlist>
    			<tr><td>搬家日期:</td><td><s:textfield name="movedate" theme="simple" ></s:textfield><span><font color="red" size="1px">日期格式如：2010-06-10</font></span></td></tr>
    			<s:textfield name="contatc" label="联系人" required="true"></s:textfield>
    			<s:textfield name="phone" label="联系电话" required="true"></s:textfield>
    			<s:hidden name="status" value="0"></s:hidden>
    			<s:submit value="预约登记" method="saveMessage" align="center" />
    		</s:form>
    	</table>
    </div>
  </body>
</html>
