<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Out.jsp</title>
</head>
<body>
	<h1>Font Tag를 알아봅시다</h1>
	<c:out value="c:out 에 대해 알아보겠습니다."/><br>
	<c:out value="<font size=7>커다란 글씨</font>를 출력합니다."/>
	<c:out value="<font size=7>커다란 글씨</font>를 출력합니다." escapeXml="false"/>
	<!-- c:out 태그의 escapeXml은 기본값이 true로 설정되어있다.
	이 값을 false로 바꿔주지 않으면 value에 들어있는 내용을 그대로 출력한다. -->
	<br>
	커다란 글씨를 출력합니다<br>
	<font size=7>커다란 글씨</font>를 출력합니다.
</body>
</html>