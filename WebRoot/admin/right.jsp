<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  <style type="text/css">
<!--
.STYLE1 {
	font-size: 36px;
	font-weight: bold;
}
-->
</style>
  
  <body>
         <center>
			  <table width="100%" border="0" align="center">
			  <tr>
			    <td height="700"><img height="700" width="100%" src="<%=path%>/images/toububig.jpg" /></td>
			  </tr>
			  <tr>
			    <td> 云南民族大学-和丽-毕业设计</td>
			  </tr>
			</table>

       </center>
  </body>
</html>
