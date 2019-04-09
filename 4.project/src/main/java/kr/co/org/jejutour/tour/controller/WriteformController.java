package kr.co.org.jejutour.tour.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/view/tourist/writeboardform.do")
public class WriteformController extends HttpServlet{
	public void service(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException {
		RequestDispatcher rd = request.getRequestDispatcher("tourist-writeform.jsp");
		rd.forward(request, response);
	}
}
