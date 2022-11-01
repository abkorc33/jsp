<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% //ch08.ProductInfo pinfo = new ch08.BookInfo();%>
<jsp:useBean class="ch08.BookInfo" id="pinfo" scope="request"/>
<jsp:setProperty name="pinfo" property="code" value="3001"/>
<jsp:setProperty name="pinfo" property="name" value="React"/>
<jsp:setProperty name="pinfo" property="price" value="18000"/>
<jsp:setProperty name="pinfo" property="writer" value="김이름"/>
<jsp:setProperty name="pinfo" property="page" value="280"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BookInfoView.jsp</title>
</head>
<body>
	<h1>도서정보</h1>
	<jsp:include page="ProductInfo.jsp"/>
	
</body>
</html>