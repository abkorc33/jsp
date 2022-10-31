<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String winners[] = new String[3];
winners[0] = "이름1";
winners[1] = "이름2";
winners[2] = "이름3";
request.setAttribute("WINNERS", winners);
RequestDispatcher dispatcher = request.getRequestDispatcher("WinnersView.jsp");
dispatcher.forward(request,response);
%>