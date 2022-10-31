package ch01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HundredServlet extends HttpServlet {
	
		public void doGet(HttpServletRequest request, HttpServletResponse response)
		throws IOException, ServletException {
			int result = 0;
			for(int cnt = 1; cnt <= 100; cnt++) {
				result += cnt;
			}
			response.setContentType("text/html;charset=utf-8");
			PrintWriter out = response.getWriter();
			
			out.println("<html>");
				out.println("<head>");
					out.println("<title>1부터 100까지 더하는 서블릿</title>");
				out.println("</head>");
				out.println("</body>");
					out.printf("<h1>1부터 100까지의 합은 %d입니다. %s</h1>", result);
				out.println("</body>");
			out.println("<html>");
		}

	}

