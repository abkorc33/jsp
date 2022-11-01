<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean class="ch08.ClothingInfo" id="pinfo" scope="request"/>
<jsp:setProperty name="pinfo" property="code" value="5001"/>
<jsp:setProperty name="pinfo" property="name" value="티셔츠"/>
<jsp:setProperty name="pinfo" property="price" value="25000"/>
<jsp:setProperty name="pinfo" property="size" value="L"/>
<jsp:setProperty name="pinfo" property="color" value="베이지"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ClothingInfoView.jsp</title>
</head>
<body>
	<h1>의류정보</h1>
	<jsp:include page="ProductInfo.jsp"/>
</body>
</html>