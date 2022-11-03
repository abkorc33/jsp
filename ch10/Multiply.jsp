<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Multiply.jsp</title>
</head>
<body>
	<h1>두 수의 곱한 결과는?</h1>
	<h1>${param.NUM1 } x ${param.NUM2 } = ${param.NUM1 * param.NUM2 }</h1>
</body>
</html>