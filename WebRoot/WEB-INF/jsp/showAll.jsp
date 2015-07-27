<%@page import="org.springframework.web.context.request.SessionScope"%>
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
    
    <title>My JSP 'showAll.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<script>
		function backTomain(){
			location.href="<%=path%>/booking/BookingAction.action";
		}
	</script>
	
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
  		margin-top: 50px;
  	}	
  	
  	
  	
  </style>
  <body>
  		<div id="div1" align="center">
    		<span id="span1">顺风搬家</span><br>
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="span2">———顺风搬家，一路顺风</span>
    	</div>
  	
    	<div id="div2" align="center">   		
    		
	    	  <table border="1px" align="center">
	    	  	<tr>
	    	  		<td>起始地区</td>
	    	  		<td>所用车型</td>
	    	  		<td>搬家日期</td>
	    	  		<td>联系人</td>
	    	  		<td>联系电话</td>
	    	  		<td>状态</td>
	    	  		<td align="center">操作</td>
	    	  	</tr>
	    			<s:iterator value="#session.resultList" status="status">
	    			<s:form namespace="/booking" action="AddUpdateMessage" theme="simple">
	    			  <s:hidden id="%{#status.index}"  name="mid" ></s:hidden>    		
	    			  <tr>	    			  
		    				<td>
		    					<s:if test="area == 1">
		    						和平区
		    					</s:if>
		    					<s:elseif test="area == 2">
		    						铁西区
		    					</s:elseif>
		    					<s:elseif test="area == 3">
		    						沈河区
		    					</s:elseif>
		    					<s:elseif test="area == 4">
		    						大东区
		    					</s:elseif>
		    					<s:elseif test="area == 5">
		    						皇姑区
		    					</s:elseif>
		    					<s:elseif test="area == 6">
		    						浑南新区
		    					</s:elseif>
		    				</td>
		    				<td>
		    					<s:if test="cartype == 1">
		    						金杯
		    					</s:if>
		    					<s:elseif test="cartype == 2">
		    						皮卡
		    					</s:elseif>
		    					<s:elseif test="cartype == 3">
		    						厢式货车
		    					</s:elseif>
		    					<s:elseif test="cartype == 4">
		    						1041货车
		    					</s:elseif>
		    					<s:elseif test="cartype == 5">
		    						倒骑驴
		    					</s:elseif>
		    				</td>
		    				<td>
		    					<s:property value="movedate"/>
		    				</td>
		    				<td>
		    					<s:property value="contatc"/>
		    				</td>
		    				<td>
		    					<s:property value="phone"/>
		    				</td>
		    				<td>
		    					<s:if test="status == 0">
		    						未处理
		    					</s:if>
		    					<s:elseif test="status == 1">
		    						已派车
		    					</s:elseif>
		    					<s:elseif test="status == 2">
		    						已结束
		    					</s:elseif>
		    				</td>
		    				<td align="center">	    					
		    						<s:submit value="处理" theme="simple" method="updateBooking" />
		    						<s:submit value="详情 " theme="simple" method="checkedBooking" />
		    				</td>    						   				
	    			  </tr>	
	    			  </s:form>    			 
	    			</s:iterator>
	    	  	 	 <tr>
		    	  	  	<td colspan="7" align="center">	     	  	  	   
			     	  	  	   <s:iterator begin="1" end="%{#session.listSize}">
			    	  	  			<s:a namespace="/booking" action="ShowBooking" >
			    	  	  				<s:property />
			    	  	  				<s:param name="pageNum" value="top" />
			    	  	  			</s:a>
			    	  	  	   </s:iterator>   	  	  	   	  	
		    	  	  	</td>
	    	  	 	 </tr>
	    	  </table>
    	   	  <input type="button" value="返回主界面" onclick="backTomain()">
    	</div>
  </body>
</html>
