<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*" %>
<c:set var="date" value="<%=new Date() %>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DateTimeFormat.jsp</title>
</head>
<body>
	<h1>현재의 시각</h1>
	<h2>[S] <fmt:formatDate value="${date }" type="both" dateStyle="short" timeStyle="short"/></h2>
	<h2>[M] <fmt:formatDate value="${date }" type="both" dateStyle="medium" timeStyle="medium"/></h2>
	<h2>[L] <fmt:formatDate value="${date }" type="both" dateStyle="long" timeStyle="long"/></h2>
	<h2>[F] <fmt:formatDate value="${date }" type="both" dateStyle="full" timeStyle="full"/></h2>
	<!-- u 유저 커스터마이징이라는 뜻 -->
	<h2>[U] <fmt:formatDate value="${date }" type="both" dateStyle="full" timeStyle="medium"/></h2>
</body>
</html>