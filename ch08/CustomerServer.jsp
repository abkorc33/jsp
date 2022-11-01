<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean class="ch08.PersonalInfo" id="pinfo" scope="request"/>
<jsp:setProperty name="pinfo" property="name" value="김이름"/> 
<jsp:setProperty name="pinfo" property="gender" value="여"/> 
<jsp:setProperty name="pinfo" property="age" value="18"/> 
<jsp:forward page="CustomerInfoView.jsp"/>
<%// forward 메서드를 통해서 자바빈 객체를 전달하려면
  // scope 애트리뷰트의 값을 최소한 request로 설정해야 한다.
%>