<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page buffer="8kb" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BufferSize,jsp</title>
</head>
<body>
	<h1>출력 버퍼의 크기</h1>
	<h2><%=out.getBufferSize() %> byte</h2>
</body>
</html>