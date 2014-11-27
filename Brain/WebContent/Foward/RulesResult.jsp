<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
		덧샘의 결과는? <% request.getAttribute("ADD"); %><br> 
		뺄샘의 결과는? <% request.getAttribute("MINUS"); %><br> 
		곱샘의 결과는? <% request.getAttribute("MULTI"); %><br> 
		나눗샘의 결과는? <% request.getAttribute("DIV"); %><br> 

</body>
</html>0