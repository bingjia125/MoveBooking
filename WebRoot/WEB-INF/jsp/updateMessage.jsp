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
    
    <title>My JSP 'updateMessage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<script>
	
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
  		margin-top: 20;
  	}
  </style>  
  
  <body>
    <div id="div1" align="center">
    	<span id="span1">顺风搬家</span><br>
    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="span2">———顺风搬家，一路顺风</span>
    </div>
    <div id="div2" align="center">
    	<table>
    		
    		<s:form namespace="/booking" action="UpdateMessage" >
    			<table>
    				<tr>	 
    						<td>
		    					起始地区：
		    				</td>   			  
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
		    			</tr>
		    			<tr>
		    				<td>
		    					所用车型：
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
		    			</tr>
		    			<tr>
		    				<td>
		    					搬家日期：
		    				</td>
		    				<td>
		    					<s:property value="movedate"/>
		    				</td>
		    			</tr>
		    			<tr>
		    				<td>
		    					联 系 人：
		    				</td>
		    				<td>
		    					<s:property value="contatc"/>
		    				</td>
		    			</tr>
		    			<tr>
		    				<td>
		    					联系电话：
		    				</td>
		    				<td>
		    					<s:property value="phone"/>
		    				</td>
		    			</tr>	
    			   
    				<tr>
    					<td>
    						订单状态：
    					</td>			
    					<td>
    						<s:select name="status" list="#{0:'未处理',1:'已派车',2:'已结束'}"  theme="simple"></s:select>		
    					</td>
    				</tr>
    				<tr>   				
    					<td colspan="2" align="center">
    						<s:submit value="处理登记信息" method="updateMessage" align="center" theme="simple" />
    					</td>
    				</tr>
    			</table>
    		<s:debug></s:debug>
    		</s:form>   		
    	</table>
    </div>
  </body>
</html>
