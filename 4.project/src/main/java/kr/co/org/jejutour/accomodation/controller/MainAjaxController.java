package kr.co.org.jejutour.accomodation.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/view/accomodation/mAjax.do")
public class MainAjaxController extends HttpServlet {

	@Override
public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String city = request.getParameter("city");
		System.out.println("city" + city);
}
	
}
