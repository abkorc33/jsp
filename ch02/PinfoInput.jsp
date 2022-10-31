<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PinfoInput.jsp</title>
</head>
<body>
	<h1>개인 정보 입력</h1>
	<form action="/pinfo-result" method="get">
		이		름 : <input type="text" name="NAME"/><br>
		아	이	디 : <input type="text" name="ID"/><br>
		비밀번호 : <input type="password" name="PASSWORD"/><br>
		성	별 :
			남 <input type="radio" name="GENDER" value="MALE"/>
			여 <input type="radio" name="GENDER" value="FEMALE"/>
		<hr>
		메일 수신 여부 : 
			공지 메일 <input type="checkbox" name="INOTICE"/>
			광고 메일 <input type="checkbox" name="CNOTICE"/>
			배송 확인 메일 <input type="checkbox" name="DNOTICE"/><br><br>
		직	업 :
			<select name="JOB">
				<option>프로그래머</option>
				<option>회사원</option>
				<option>아티스트</option>
			</select>
		자기 소개 : 
			<textarea name="MYINFO" cols="80" row="6"></textarea>
		<hr>
		<input type="reset" value="취소"/>
		<input type="submit" value="등록"/>
	</form>
</body>
</html>