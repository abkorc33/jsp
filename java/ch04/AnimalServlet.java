package ch04;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AnimalServlet extends HttpServlet{

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		request.setCharacterEncoding("UTF-8");
		String food = request.getParameter("FOOD");
		
		HttpSession session = request.getSession();
		session.setAttribute("FOOD", food);
		
		
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		out.println("<html>");
		out.println("<head>");
			out.println("<title>좋아하는 동물과 음식?</title>");
		out.println("</head>");
		out.println("<body>");
			out.println("<h1>좋아하는 동물?</h1>");
			out.println("<form action=result>");
				out.println("<input type=text name=ANIMAL>");
				out.println("<input type=submit value=확인>");
			out.println("</form>");
		out.println("</body>");
	out.println("<html>");
	}
	
}
