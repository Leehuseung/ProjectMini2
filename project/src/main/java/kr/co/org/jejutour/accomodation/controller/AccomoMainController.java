package kr.co.org.jejutour.accomodation.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.org.jejutour.common.page.AccomoPageResult;
import kr.co.org.jejutour.db.MyAppSqlConfig;
import kr.co.org.jejutour.repository.dao.AccomodationMapper;
import kr.co.org.jejutour.repository.vo.AccomoPageVO;

@WebServlet("/view/accomodation/accomo_main.do")
public class AccomoMainController extends HttpServlet {

private AccomodationMapper mapper;
	
	public AccomoMainController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(AccomodationMapper.class);
	}
	
	
	
	@Override
protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	AccomoPageVO page = new AccomoPageVO();
	int pageNo = 1;
	try {
		pageNo = Integer.parseInt(
				request.getParameter("pageNo"));
		page.setPageNo(pageNo);
	} catch (Exception e) {}
	
	// 게시물 목록 가져오기
	request.setAttribute("list", mapper.selectBoard(page));
	request.setAttribute("pageResult", new AccomoPageResult(
			pageNo, mapper.selectBoardCount()
	));

	
	
	
	
	RequestDispatcher rd = request.getRequestDispatcher(
			"accomo_main.jsp"
			);
	rd.forward(request, response);
	
}
}
