package ch02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BBSPostServlet extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// 파라미터로 넘겨받은 문자열의 언어셋을 처리한다.
		request.setCharacterEncoding("utf-8");
		
		String name = request.getParameter("NAME");
		String title = request.getParameter("TITLE");
		String content = request.getParameter("CONTENT");
		System.out.println(name + ":" + title + ":" + content);
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<head>");
			out.println("<title>게시글 등록 결과 화면</title>");
		out.println("</head>");
		out.println("</body>");
			out.printf("<h1>이름 : %s</h1><br>", name);
			out.printf("<h1>제목 : %s</h1><br>", title);
			out.println("------------------------------------------------------------------");
			out.printf("<pre>%s</pre>", content);
			out.println("------------------------------------------------------------------");
			out.println("<h2>게시글을 등록하였습니다.</h2>");
		out.println("</body>");
	out.println("<html>");
		
	}
	
	

}
