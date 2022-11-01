<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NewCustomerInfo.jsp</title>
</head>
<body>
	<h1>회원 정보</h1>
	<jsp:useBean class="ch08.PersonalInfo" id="pinfo"/>
	<jsp:setProperty name="pinfo" property="*"/>
	<h1>이름 : <jsp:getProperty name="pinfo" property="name"/></h1>
	<h1>성별 : <jsp:getProperty name="pinfo" property="gender"/></h1>
	<h1>나이 : <jsp:getProperty name="pinfo" property="age"/></h1>
</body>
</html>