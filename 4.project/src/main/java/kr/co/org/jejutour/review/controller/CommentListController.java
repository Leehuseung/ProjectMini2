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


@WebServlet("/view/review/comment-list.do")
public class CommentListController extends HttpServlet{
	public ReviewMapper mapper;
	
	public CommentListController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(ReviewMapper.class);
	}
	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		response.setContentType("text/html; charset=utf-8");
		int no = Integer.parseInt(request.getParameter("no"));
		mapper.selectListCommentByNo(no);
		PrintWriter out = response.getWriter();
		out.println();
		out.close();
		
		
		
		
		

	}
}
