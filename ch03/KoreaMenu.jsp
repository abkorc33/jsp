<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>오늘의 한식 메뉴</h1>
	<h2>김치 찌개</h2>
	<h2>된장 찌개</h2>
	<h2>불고기 백반</h2>
	<% out.flush();
	RequestDispatcher dispatcher = request.getRequestDispatcher("Now.jsp");
	dispatcher.include(request, response);
	// include 메서드는 jsp페이지가 실행되는 시점에 해당 jsp페이지를 호출
	
	/*include 지시자는 웹 컨테이너가 jsp페이지를 
	내부에서 서블릿 클래스로 변환하는 시점에
	해당 jsp페이지로부터 변환된 코드를 그 서블릿의 클래스의 일부로 만든다.*/
	%>
</body>
</html>