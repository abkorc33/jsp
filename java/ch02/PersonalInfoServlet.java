package ch02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PersonalInfoServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 파라미터로 넘겨받은 문자열의 언어셋을 처리한다.
		request.setCharacterEncoding("utf-8");
		
		// 웹 페이지에서 넘어온 정보를 변수에 저장한다.
		String name = request.getParameter("NAME");
		String id = request.getParameter("ID");
		String password = request.getParameter("PASSWORD");
		String gender = request.getParameter("GENDER");
		if(gender.equals("MALE")) gender = "남자";
		else					gender = "여자";
		
		String iNotice = request.getParameter("INOTICE");
		String cNotice = request.getParameter("CNOTICE");
		String dNotice = request.getParameter("DNOTICE");
		
		String job = request.getParameter("JOB");
		String myInfo = request.getParameter("MYINFO");
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<head>");
			out.println("<title>게시글 등록 결과 화면</title>");
		out.println("</head>");
		out.println("</body>");
			out.println("<h1>개인 정보</h1>");
			out.printf("<h2>이름 : %s</h2><br>", name);
			out.printf("<h2>아이디 : %s</h2><br>", id);
			out.printf("<h2>비밀번호 : %s</h2><br>", password);
			out.printf("<h2>성별 : %s</h2><br>", gender);
			out.printf("<h2>공지메일 : %s</h2><br>", noticeMsgChange(iNotice));
			out.printf("<h2>광고메일 : %s</h2><br>", noticeMsgChange(cNotice));
			out.printf("<h2>배송확인메일 : %s</h2><br>", noticeMsgChange(dNotice));
			out.printf("<h2>직업 : %s</h2><br>", job);
			out.printf("<h2>자기소개 : <pre>%s</pre></h2><br>", myInfo);
		out.println("</body>");
	out.println("<html>");
		
	}
	
	// 메일 수신 여부의 값(정상이면 on, 아니면 null)을 한글로 바꾸는 메시지
	private String noticeMsgChange(String notice) {
		String returnMsg = "";
		
		if(notice == null) returnMsg = "메일을 받지 않겠습니다.";
		else if(notice.equals("on")) returnMsg = "메일을 받겠습니다.";
		else				returnMsg = notice;
		
		return returnMsg;
	}

}
