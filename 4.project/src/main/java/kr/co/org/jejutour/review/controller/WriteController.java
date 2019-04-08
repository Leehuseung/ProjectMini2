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


@WebServlet("/view/review/write.do")
public class WriteController extends HttpServlet{
	public ReviewMapper mapper;
	
	public WriteController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(ReviewMapper.class);
	}
	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		request.setCharacterEncoding("utf-8");
		
		ReviewVO r = new ReviewVO();
		r.setTitle(request.getParameter("title"));
		//request.getParameter("ratingCategory")
		//form태그에서 넘어올때는 name으로 넘어오니까 일치시켜야함.
		
		//jsp파일로 r이라는 reviewVO를 넘겨주는 거니까 jsp에는 vo에 정의되어 있는 변수명이랑 일치시켜야 함.
		r.setRatingCategoryNo(Integer.parseInt(request.getParameter("ratingCategory")));
		r.setReviewCategoryNo(Integer.parseInt(request.getParameter("reviewCategory")));
		r.setContent(request.getParameter("content"));
		System.out.println(request.getParameter("content"));
		mapper.insertReview(r);
		request.setAttribute("review", r);
		//sendRedirect로 detail.do로 가야함.
		request.getRequestDispatcher("detail.jsp").forward(request, response);
		
	}
}