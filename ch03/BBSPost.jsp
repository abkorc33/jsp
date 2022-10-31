<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.*, java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>게시글 쓰기 결과</h2>
	<%
		request.setCharacterEncoding("UTF-8");
	
		// 이전 페이지에서 넘겨준 변수의 내용을 저장한다.
		String name = request.getParameter("NAME");
		String title = request.getParameter("TITLE");
		String content = request.getParameter("CONTENT");
		
		// 파일 이름 만들기
		Date date = new Date();
		Long time = date.getTime();
		String fileName = time + "./txt";	// 파일이름 : 시간.txt
		
		PrintWriter writer = null;
		
		try {
			String filePath = application.getRealPath("/WEB-INF/bbs/" + fileName);
			writer = new PrintWriter(filePath);
			
			writer.printf("제 목 : %s %n", title);	//%s는 문자 %n은 엔터
			writer.printf("글쓴이 : %s %n", name);
			writer.println("------------------------------------------------");
			writer.println(content);
			out.println("<h1>게시글을 저장하였습니다</h1>");
			
		} catch (IOException ioe) {
			out.println("파일에 데이터를 기록할 수 없습니다.");
		} finally {
			try {
				writer.close();
			} catch (Exception e) {
				out.println("PrintWriter 자원을 닫는데 문제 발생");
			}
		}
	%>
</body>
</html>