<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%//키값이니까 제네릭 안에 타입 두개 필요
HashMap<String, String> map = new HashMap<String, String>();
map.put("name1", "청석골");
map.put("name2", "남원");
map.put("name3", "강원도");

request.setAttribute("ADDRESS", map);
RequestDispatcher dispatcher = request.getRequestDispatcher("AddressView.jsp");
dispatcher.forward(request,response);
%>