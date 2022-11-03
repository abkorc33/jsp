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
<title>Now.jsp</title>
</head>
<body>
	<h1>[오늘의 날짜] <fmt:formatDate value="${date }"/></h1>
	<h1>[오늘의 시간] <fmt:formatDate value="${date }" type="time"/></h1>
</body>
</html>