<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PetsResult.jsp</title>
</head>
<body>
	<h1>내가 키우는 애완동물</h1>
	아이디: ${param.ID}<br>
	선택한 동물 : ${paramValues.ANIMAL[0]} ${paramValues.ANIMAL[1]} ${paramValues.ANIMAL[2]}
</body>
</html>