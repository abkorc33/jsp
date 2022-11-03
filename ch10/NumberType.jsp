<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NumberType.jsp</title>
</head>
<body>
<!-- currency는 금액을 표시해준다. currencySymbol은 $표시 등을 나타내주는 곳 -->
	<h1>금액 : <fmt:formatNumber value="1230000" type="currency" currencySymbol="♣"/></h1>
	<h1>퍼센트 : <fmt:formatNumber value="0.99" type="percent"/></h1>
</body>
</html>