<%@ page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>
<%
	String path = application.getRealPath("/WebContent/Redirection");
	//out.println(path);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BBS POST</title>
</head>
<body>

	<h2>글쓰기</h2>
	<%
		String name = request.getParameter("NAME");
		String title = request.getParameter("TITLE");
		String post = request.getParameter("POST");
		StringBuffer fileName = new StringBuffer(title + "-" + name + ".txt");
		out.println(fileName.toString());
		PrintWriter pw = null;
		String resultWriting = null;
		try{

			pw = new PrintWriter(new File(fileName.toString()));
			pw.println(name);
			pw.println(title);
			pw.println(post);
			resultWriting = "SUCCESS";
		}catch (IOException ioe){
			resultWriting = "FAIL";
		}finally {
			try{
				pw.close();
			}catch (Exception e){
		
			}
			response.sendRedirect("BBSResult.jsp?RESULT=" + resultWriting);
		}
	%>
	
</body>
</html>