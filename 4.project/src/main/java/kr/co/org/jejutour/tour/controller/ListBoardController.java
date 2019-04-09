package kr.co.org.jejutour.tour.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.org.jejutour.common.page.TouristPageResult;
import kr.co.org.jejutour.db.MyAppSqlConfig;
import kr.co.org.jejutour.repository.dao.TouristMapper;
import kr.co.org.jejutour.repository.vo.TouristPageVO;

@WebServlet("/view/tourist/touristlist.do")
public class ListBoardController extends HttpServlet {
	
	private TouristMapper mapper;
	
	public ListBoardController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(TouristMapper.class);
	}
	
	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		TouristPageVO page = new TouristPageVO();
		
		int pageNo = 1;
		try {
			pageNo = Integer.parseInt(request.getParameter("pageNo"));
			page.setPageNo(pageNo);
		} catch (Exception e) {
			
		}

		// 게시물 목록 가져오기
		request.setAttribute("list", mapper.selectTouristBoard(page));
		
		// 페이징 부분
		request.setAttribute("pageResult", new TouristPageResult(pageNo, mapper.selectTouristBoardCount()));
		
		request.getRequestDispatcher("tourist-main.jsp").forward(request, response);

	}
}
