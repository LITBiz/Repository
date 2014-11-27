<%@ page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>
<%
	String path = application.getRealPath("/WebContent/BBS");
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
		try{

			pw = new PrintWriter(new File(fileName.toString()));
			pw.println(name);
			pw.println(title);
			pw.println(post);
			out.println("포스트 되었습니다.");
		}catch (IOException ioe){
			out.println("포스트 저장을 실패하였습니다");
		}finally {
			try{
				pw.close();
			}catch (Exception e){
				out.println("파일을 닫는데 문제가 있습니다");
			}
		}
	%>
	
</body>
</html>