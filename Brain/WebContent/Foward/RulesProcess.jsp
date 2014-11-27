<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		int firstNum = Integer.parseInt(request.getParameter("FIRSTNUM"));
		int scndNum = Integer.parseInt(request.getParameter("SCNDNUM"));
		int rstAdd = firstNum + scndNum;
		int rstMinus = firstNum + scndNum;
		int rstMulti = firstNum + scndNum;
		int rstDiv = firstNum + scndNum;
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("RulesResult.jsp");
		request.setAttribute("ADD", rstAdd);
		request.setAttribute("MULTI", rstMulti);
		request.setAttribute("MINUS", rstMinus);
		request.setAttribute("DIV", rstDiv);
		
		dispatcher.forward(request, response);
	%>
</body>
</html>