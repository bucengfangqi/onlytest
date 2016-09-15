<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <script>
  function myfunction(){
	var re = /^\d{3}\-\d{3,8}$/;
	var input = document.getElementById('test');
	if(re.test(input.value)){
		document.getElementById('test1').innerText="OK";
	}else{
		document.getElementById('test1').innerText="电话号码格式不符,例如010-123456";
	}
	}
  </script>





  </head>
  
  <body>
  <input type="text" id="test" onblur="myfunction()"/>请填写电话号码
  <div id="test1"></div>
  </body>
</html>












