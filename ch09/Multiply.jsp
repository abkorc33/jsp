<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="num1" value="7"/>
<c:set var="num2" value="9"/>
<c:set var="result" value="${num1*num2 }"/>
<% int num3 = 10, num4 = 20; %>
<c:set var="sum" value="<%=num3*num4 %>"/>
<% // 스크립팅 요소 안에서 커스텀액션인 sum 사용 불가 int total = sum; 
// <c:set>커스텀 액션을 이용해서 선언한 변수는 자바 변수가 되는 것이 아니라, 
// page 데이터 영역의 어트리뷰트가 되기 때문이다.
%>
<%// <c:set> 액션을 이용해서 선언한 변수를 스크립팅 요소
// 안에서 사용하는 것은 불가능하지만,
// 스크립팅 요소 안에서 선언한 변수를 <c:set> 액션의
// value 어트리뷰트에 사용하는 것은 가능하다.
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Multiply.jsp</title>
</head>
<body>
	<h1>곱셈 결과는?</h1>
	<h2>${num1 } x ${num2 } = ${result }</h2>
	<h2><%=num3%> x <%=num4%> = ${result }</h2>
</body>
</html>