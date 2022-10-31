<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		BufferedReader reader = null;
	try {
		String filePath = application.getRealPath("/WEB-INF/input.txt");
		reader = new BufferedReader(new FileReader(filePath));
		
		while(true) {
			String str = reader.readLine();	// 데이터를 한줄 읽어서 변수에 저장
			if(str == null)	// 읽을 데이터가 없다면
				break;	// 반복문 벗어남
			out.println("<h4>" + str + "</h4>");
		}
	} catch (FileNotFoundException fnfe) {
		out.println("파일이 존재하지 않습니다.");
	} catch (IOException ioe) {
		out.println("파일이 읽어들이는데 문제 발생.");
	} catch (Exception e) {
		out.println("예상 외 문제 발생.");
	} finally {
		try {
			reader.close();
		} catch (Exception e) {
			out.println("BufferedReader 자원을 닫는데 문제 발생.");
		}
	}
	%>
</body>
</html>