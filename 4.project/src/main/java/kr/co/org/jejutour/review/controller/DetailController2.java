package kr.co.org.jejutour.review.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.org.jejutour.db.MyAppSqlConfig;
import kr.co.org.jejutour.repository.dao.ReviewMapper;
import kr.co.org.jejutour.repository.vo.ReviewVO;

@WebServlet("/view/review/detail2.do")
public class DetailController2 extends HttpServlet{
	private ReviewMapper mapper;
	public DetailController2() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(ReviewMapper.class);
	}
	
	public void service(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException {

		int no = Integer.parseInt(request.getParameter("no"));
//		System.out.println( "no:" + Integer.parseInt(request.getParameter("no")));
	//		System.out.println("detail1"+no);
		request.setAttribute("detail2", mapper.detailReviewNo(no));
//				System.out.println(no);
		
		RequestDispatcher rd = request.getRequestDispatcher("detail2.jsp");
		rd.forward(request, response);
	}
}
