<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="ch07.ProductInfo"%>
<%
	ProductInfo product = new ProductInfo();
	product.setName("초코케이크 2호");
	product.setPrice(25000);
	
	request.setAttribute("PRODUCT", product);
	RequestDispatcher dispatcher = request.getRequestDispatcher("ProductInfoView.jsp");
	dispatcher.forward(request,response);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>