<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EmptyOperator.jsp</title>
</head>
<body>
<!-- 주소창 끝에 ?ID=hi -->
	<h1>안녕하십니까? ${empty param.ID ? "손" : param.ID}님</h1>
</body>
</html>