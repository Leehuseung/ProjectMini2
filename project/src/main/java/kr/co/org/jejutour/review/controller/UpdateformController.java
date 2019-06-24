package kr.co.org.jejutour.review.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.org.jejutour.db.MyAppSqlConfig;
import kr.co.org.jejutour.repository.dao.ReviewMapper;


@WebServlet("/view/review/updateform.do")
public class UpdateformController extends HttpServlet{
	public ReviewMapper mapper;
	
	public UpdateformController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(ReviewMapper.class);
	}
	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		int no = Integer.parseInt(request.getParameter("no"));
		request.setAttribute("update", mapper.selectFormReviewNo(no));
		request.getRequestDispatcher("modify.jsp").forward(request, response);
		
		
		
		
		
		

	}
}
