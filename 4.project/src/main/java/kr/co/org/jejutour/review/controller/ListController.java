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


@WebServlet("/view/review/list.do")
public class ListController extends HttpServlet{
	public ReviewMapper mapper;
	
	public ListController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(ReviewMapper.class);
	}
	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		
		request.setAttribute("lists", mapper.selectListReview(new ReviewVO()));
		System.out.println(mapper.selectListReview(new ReviewVO()));
		request.getRequestDispatcher("listAll.jsp").forward(request, response);
		
	}
}
