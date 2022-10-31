package ch02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdderServlet extends HttpServlet{
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		// request로 받는 변수는 대소문자를 구분한다.
		String str1 = request.getParameter("NUM1");
		String str2 = request.getParameter("NUM2");
		System.out.println(str1 + ":" + str2);
		
		// 웹페이지로부터 넘겨받은 값은 기본이 문자열이다.
		
				int num1 = Integer.parseInt(str1);	// str1을 숫자로 변환하여 num1에 저장한다.
				int num2 = Integer.parseInt(str2);	// str2을 숫자로 변환하여 num2에 저장한다.
				int sum = num1 + num2;
				
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out = response.getWriter();
				
				out.println("<html>");
					out.println("<head>");
						out.println("<title>두수를 더하는 서블릿</title>");
					out.println("</head>");
					out.println("</body>");
						out.printf("<h1>덧셈 : %d + %d = %d</h1>",num1, num2, sum);
					out.println("</body>");
				out.println("<html>");
			}

}
