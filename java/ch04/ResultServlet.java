package ch04;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ResultServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		HttpSession session = request.getSession();
		String food = (String) session.getAttribute("FOOD");
		String animal = request.getParameter("ANIMAL");
		
//		session.invalidate();// 세션 삭제
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<head>");
			out.println("<title>좋아하는 동물과 음식?</title>");
		out.println("</head>");
		out.println("<body>");
			out.println("<h1>좋아하는 동물?</h1>");
			out.printf("<h2>당신이 좋아하는 음식은 %s이고, %s를 좋아합니다.</h2>",food, animal);
		out.println("</body>");
	out.println("<html>");
		
	}
	
}
