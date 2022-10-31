<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>1 부터 100 까지 더한 값?</h1>
	<% // scriptlet(스크립틀릿)
	int result = 0;
	for(int cnt = 1; cnt <= 100; cnt++) {
		result += cnt;
	}
	System.out.println("결과 : " + result);
	// expression(익스프레션) <%= 식 또는 값(변수)
	%>
	<h1>1 + 2 + ..... + 100 = <%=result %></h1>
</body>
</html>