package kr.co.org.jejutour.restraunt.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/view/restraunt/restraunt_writeForm.do")
public class RestrauntWriteFormController extends HttpServlet{
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/view/restraunt/restraunt_write.jsp").forward(request, response);								
	}
}
