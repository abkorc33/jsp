<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% Cookie[] cookies = request.getCookies(); // 다른 브라우저에서는 쿠키값 못읽음%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ReadCookies.jsp</title>
</head>
<body>
	<h1>쿠키 정보 보여주기</h1>
	<h2>이름 : <%=getCookieValue(cookies, "NAME") %></h2>
	<h2>이름 : <%=getCookieValue(cookies, "GENDER") %></h2>
	<h2>이름 : <%=getCookieValue(cookies, "AGE") %></h2>
</body>
</html>
<%!	// 선언부, 쿠키에 사용된 이름으로 데이터를 검색하는 메서드
private String getCookieValue(Cookie[] cookies, String name) {
	
	String value = null;
	
	if(cookies == null)	// 조사할 데이터가 없다면
		return null;	// 돌려보냄
	
	for(Cookie cookie : cookies) {
		if(cookie.getName().equals(name)) {	// name에 맞는 쿠키 이름이 있으
			return cookie.getValue();	// name에 저장된 값을 돌려준다.
		}
	}
		
	return null;
}

%>