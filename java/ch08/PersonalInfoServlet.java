package ch08;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class PersonalInfoServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		PersonalInfo obj = new PersonalInfo();
		obj.setName("김이름");
		obj.setGender('남');
		obj.setAge(40);
		
		request.setAttribute("pinfo", obj);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/ch08/CustomerInfoView.jsp");
		dispatcher.forward(request,response);
		
	}

	
	
}
