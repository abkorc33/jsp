<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
// 전 페이지에서 넘겨 준 데이터를 변수에 저장
String str1 = request.getParameter("NUM1");
String str2 = request.getParameter("NUM2");

// 계산하기 위해서 문자열을 숫자로 변환하여 변수에 저장
int num1 = Integer.parseInt(str1);
int num2 = Integer.parseInt(str2);

// request변수에 사칙연산 값을 저장한다.
// request.setAttribute(변수명, 변수에 저장할 값)
request.setAttribute("PLUS", new Integer(num1+num2));
request.setAttribute("MINUS", new Integer(num1-num2));
request.setAttribute("MULTIFLY", new Integer(num1*num2));
request.setAttribute("DIVIDE", new Integer(num1/num2));

RequestDispatcher dispatcher = request.getRequestDispatcher("FourRulesResult.jsp");
dispatcher.forward(request, response);
%>