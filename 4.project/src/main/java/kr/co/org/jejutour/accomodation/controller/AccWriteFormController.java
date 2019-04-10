package kr.co.org.jejutour.accomodation.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/view/accomodation/writeForm.do")
public class AccWriteFormController extends HttpServlet {

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	
		RequestDispatcher rd = request.getRequestDispatcher(
				"accomo_write.jsp"
				);
		rd.forward(request, response);
	
	}
	
	
}
