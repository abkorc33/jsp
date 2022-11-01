<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean class="ch08.ProductInfo" id="pinfo" scope="request"/>
<h2>제품코드 : <jsp:getProperty name="pinfo" property="code"/></h2>
<h2>제 품 명 : <jsp:getProperty name="pinfo" property="name"/></h2>
<h2>제품가격 : <jsp:getProperty name="pinfo" property="price"/></h2>
<%	//다형성, 하나의 부모타입으로 자손들이 쓸수있음
ch08.ProductInfo productInfo;
productInfo = new ch08.BookInfo();
productInfo = new ch08.ClothingInfo();
%>