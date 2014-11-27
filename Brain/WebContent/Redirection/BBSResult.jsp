<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BBS Result</title>
</head>
<body>
	<h2>글쓰기</h2><br><br>
	<%
		String result = request.getParameter("RESULT");
		if(result.contentEquals("SUCCESS"))
			out.println("저장을 성공하였습니다");
		else out.println("저장에 실패하였습니다");
	%>
</body>
</html>