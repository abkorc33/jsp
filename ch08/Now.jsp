<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<% 
GregorianCalendar now = new GregorianCalendar();
String date = String.format("%TY년 %Tm월 %Td일", now, now, now);
String time = String.format("%Tp %TR", now, now);
%>
<h2>[현재시각] <%=date %> <%=time %></h2>