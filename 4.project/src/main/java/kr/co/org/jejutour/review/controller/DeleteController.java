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

@WebServlet("/view/review/delete.do")
public class DeleteController extends HttpServlet{
	private ReviewMapper mapper;
	public DeleteController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(ReviewMapper.class);
	}
	
	public void service(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException {
		int no = Integer.parseInt(request.getParameter("no"));
		mapper.deleteReview(no);
		response.sendRedirect("list.do");
	
	}
}
