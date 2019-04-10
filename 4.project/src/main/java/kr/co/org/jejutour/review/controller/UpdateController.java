package kr.co.org.jejutour.review.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.org.jejutour.db.MyAppSqlConfig;
import kr.co.org.jejutour.repository.dao.ReviewMapper;
import kr.co.org.jejutour.repository.vo.ReviewVO;


@WebServlet("/view/review/update.do")
public class UpdateController extends HttpServlet{
	public ReviewMapper mapper;
	
	public UpdateController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(ReviewMapper.class);
	}
	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		ReviewVO r = new ReviewVO();
		
		int no = Integer.parseInt(request.getParameter("no"));
		request.setCharacterEncoding("utf-8");
		r.setBoardNo(no);
		r.setContent(request.getParameter("content"));
		r.setTitle(request.getParameter("title"));
		r.setTitle(request.getParameter(""));
		r.setMemberNo(2);
		
		response.sendRedirect("detail.do");
		
		
		
		
		
		

	}
}
