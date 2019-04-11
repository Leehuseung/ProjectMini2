package kr.co.org.jejutour.review.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.org.jejutour.common.page.RestrauntPageResult;
import kr.co.org.jejutour.db.MyAppSqlConfig;
import kr.co.org.jejutour.repository.dao.ReviewMapper;
import kr.co.org.jejutour.repository.vo.TouristPageVO;


@WebServlet("/view/review/list.do")
public class ListController extends HttpServlet{
	public ReviewMapper mapper;
	
	public ListController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(ReviewMapper.class);
	}
	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		TouristPageVO page = new TouristPageVO();
		
		int pageNo = 1;
		try {
			pageNo = Integer.parseInt(request.getParameter("pageNo"));
			page.setPageNo(pageNo);
		} catch (Exception e) {
			
		}

		request.setAttribute("lists", mapper.selectListReview(page));
		
		//페이징 공유영역에 올려주기
		request.setAttribute("page", new RestrauntPageResult(pageNo, mapper.selectReviewCount()));
		
		request.getRequestDispatcher("listAll.jsp").forward(request, response);
		
	}
}
