<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CustomerInfo.jsp</title>
</head>
<body>
	<% //아래와 같은 의미 ch08.PersonalInfo pinfo = new ch08.PersonalInfo();%>
	<jsp:useBean class="ch08.PersonalInfo" id="pinfo"/>
	<jsp:setProperty name="pinfo" property="name" value="김이름"/> 
	<jsp:setProperty name="pinfo" property="gender" value="여"/> 
	<jsp:setProperty name="pinfo" property="age" value="18"/> 
	<h1>이름 : <jsp:getProperty name="pinfo" property="name"/></h1>
	<h1>성별 : <jsp:getProperty name="pinfo" property="gender"/></h1>
	<h1>나이 : <jsp:getProperty name="pinfo" property="age"/></h1>
</body>
</html>