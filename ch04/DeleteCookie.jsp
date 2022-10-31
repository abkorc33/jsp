<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <% 
    Cookie cookie = new Cookie("GENDER", "");
    // cookie.setMaxAge(3600); 쿠키의 최대 수명(초 단위)
    // cookie.setMaxAge(-1); 웹 브라우저가 끝날 때 쿠키가 삭제된다.
    cookie.setMaxAge(0);	// 쿠키를 바로 삭제하도록 만든다.
    response.addCookie(cookie);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>쿠키 삭제하기</h1>
	<h2>gender 쿠키가 삭제되었습니다.</h2>
</body>
</html>