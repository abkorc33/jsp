<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String arr[] = {"김치찌개", "순두부찌개", "짜장면", "햄버거", "콩국수"};
request.setAttribute("MENU", arr);
%>
<jsp:forward page="LunchMenuView.jsp"></jsp:forward>