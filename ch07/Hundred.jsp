<% 
int sum = 0;
for(int cnt = 1; cnt <= 100; cnt++) 
	sum += cnt;
// 다른 페이지에서 결과값 보기
//forward로 넘겨줌
request.setAttribute("RESULT", new Integer(sum));
RequestDispatcher dispatcher  = request.getRequestDispatcher("HundredResult.jsp");
dispatcher.forward(request, response);
%>