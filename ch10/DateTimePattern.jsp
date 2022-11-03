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
<title>DateTimePattern.jsp</title>
</head>
<body>
	<h1>현재의 시각</h1>
	<h2>[오늘의 날짜] <fmt:formatDate value="${date }" type="date" pattern="yyyy년MM월dd일 (E)"/></h2>
	<h2>[현재의 시각] <fmt:formatDate value="${date }" type="time" pattern="a h시 mm분 ss초"/></h2>
</body>
</html>