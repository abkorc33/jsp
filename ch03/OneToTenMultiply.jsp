<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1부터 10까지 곱하기</title>
<!-- 이 페이지는 jsp에 의해서 생성된 html문서 입니다. -->
</head>
<body>
	<%--아래 부분은 데이터를 처리하는 스크립틀릿 입니다. jsp주석 --%>
	<%	// 스크립틀릿, 자바 주석
		int result = 1; // 곱하기를 누적할 변수
		// 1부터 10까지 곱하기를 하는 반복문
		for(int cnt = 1; cnt <= 10; cnt++) {
			result *= cnt;	// result = result*cnt;
		}
	%>
	<!-- 1부터 10까지 곱합 결과를 화면에 출력합니다. -->
	<h1>1부터 10까지 곱한 값은? <%=result %></h1>
</body>
</html>