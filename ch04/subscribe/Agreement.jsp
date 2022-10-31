<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    request.setCharacterEncoding("UTF-8"); 
    String id = request.getParameter("ID");
    String password = request.getParameter("PASSWORD");
    String name = request.getParameter("NAME");
    session.setAttribute("ID", id);
    session.setAttribute("PASSWORD", password);
    session.setAttribute("NAME", name);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원 가입 약관</h1>
	<hr>
	1. 회원 정보는 웹 사이트 어쩌고<br>
	2. 웹사이트의 정상적인<br>
	<hr>
	<form action="Subscribe.jsp" method="post">
		위의 약관 동의?
		<input type="radio" name="AGREE" value="YES">동의함
		<input type="radio" name="AGREE" value="NO">동의X<hr>
		<input type="hidden" name="HIDDENDATA" value="Hidden"/>
		<input type="submit" value="확인"/>
	</form>
	
</body>
</html>