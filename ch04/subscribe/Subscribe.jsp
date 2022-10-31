<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*"%>
<%
String agree = request.getParameter("AGREE");
String hidden = request.getParameter("HIDDENDATA");
String result = null;

if(agree.equals("YES")) {	// 약관에 동의한 경우
	String id = (String) session.getAttribute("ID");
	String password = (String) session.getAttribute("PASSWORD");
	String name = (String) session.getAttribute("NAME");
    PrintWriter writer = null;
    
    try {
    	String filePath = application.getRealPath("/WEB-INF/" + id + ".txt" );
    	writer = new PrintWriter(filePath);
    	writer.println("아이디 : " + id);
    	writer.println("비밀번호 : " + password);
    	writer.println("이름 : " + name);
    } catch (IOException ioe) {
    	result = "FAIL";
    } finally {
    	try { writer.close();
    	} catch (Exception e) {}
    } 
// .java에서는  HttpSession session = request.getSession(); 해야하는데
// .jsp에서는 안해도 .getAttribute()사용 가능
} else {	// 동의xx
	result = "FAIL";
}
session.invalidate();
response.sendRedirect("Result.jsp?RESULT=" + result);
%>