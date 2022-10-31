<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>게시글 쓰기 결과 화면</h1>
	<%
		String result = request.getParameter("RESULT");
		
		if(result.equals("SUCCESS")) out.println("게시글 저장");
		else if(result.equals("FAIL")) out.println("게시글 저장 실패");
		else out.println("예상치 못한 문제 발생");
	%>
</body>
</html>