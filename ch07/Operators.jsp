<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Operators.jsp</title>
</head>
<body>
	<h1>익스프레션 언어 연산자</h1>
	X = ${param.NUM1} Y = ${param.NUM2}<br>
	X + Y ${param.NUM1 + param.NUM2}<br>
	X - Y ${param.NUM1 - param.NUM2}<br>
	X * Y ${param.NUM1 * param.NUM2}<br>
	X / Y ${param.NUM1 / param.NUM2}<br>
	X % Y ${param.NUM1 % param.NUM2}<br>
	X가 더 큰가요? ${param.NUM1 - param.NUM2 > 0 }<br>
	Y가 더 큰가요? ${param.NUM1 - param.NUM2 < 0 }<br>
	X와 Y 모두 양수인가요? ${param.NUM1 > 0 && param.NUM2 > 0}<br>
	X와 Y가 같은가요? ${param.NUM1 == param.NUM2 ? "예" : "아니오"}<br>
	<hr>
	${param.NUM1}을 ${param.NUM2 }로 나눈 몫은 ${param.NUM1 div param.NUM2 }입니다. <br>
	나머지는 ${param.NUM1 mod param.NUM2 }입니다.<br>
	둘 다 양수인가? ${param.NUM1 gt 0 and param.NUM2 gt 0 }<br>
	둘 다 음수인가? ${param.NUM1 lt 0 and param.NUM2 lt 0 }<br>
</body>
</html>