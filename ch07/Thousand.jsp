<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    // 같은 페이지 내에서 결과값 보기
    // java코드에 setAttribute로 지정된 값을 써야 ${}형식(EL식(expression language)) 사용 가능
    int sum = 0;
    for(int cnt = 1; cnt <= 1000; cnt++)
    	sum += cnt;
    pageContext.setAttribute("RESULT", new Integer(sum));
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>1부터 1000까지의 합은 ${RESULT}</h1>
</body>
</html>