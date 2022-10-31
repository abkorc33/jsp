<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*" %>
<%
//array list사용
ArrayList<String> items = new ArrayList<String>();
items.add("딸기");
items.add("복숭아");
items.add("포도");

request.setAttribute("FRUITS", items);
RequestDispatcher dispatcher = request.getRequestDispatcher("FruitsView.jsp");
dispatcher.forward(request,response);
%>