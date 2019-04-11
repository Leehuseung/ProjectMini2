package kr.co.org.jejutour.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/view/member/logout.do")
public class LogoutController extends HttpServlet {	
	public void service(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		request.getSession().invalidate();
		response.sendRedirect(request.getContextPath() + "/view/member/main.do");
	}
}