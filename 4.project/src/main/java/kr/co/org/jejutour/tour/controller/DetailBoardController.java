package kr.co.org.jejutour.tour.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.org.jejutour.db.MyAppSqlConfig;
import kr.co.org.jejutour.repository.dao.TouristMapper;
import kr.co.org.jejutour.repository.vo.TouristVO;

@WebServlet("/view/tourist/detailboard.do")
public class DetailBoardController extends HttpServlet {
	
	private TouristMapper mapper;
	
	public DetailBoardController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(TouristMapper.class);
	}
	
	public void service(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException {
		
		// 게시물 상세 정보 조회하기
		int no = Integer.parseInt(request.getParameter("no"));
		// 조회수 증가
		System.out.println("no : " + no);
		mapper.updateTouristViewCnt(no);
		System.out.println("조회수 증가");
		request.setAttribute("tourist", mapper.selectTouristBoardByNo(no));
		
		RequestDispatcher rd = request.getRequestDispatcher("tourist-detail.jsp");
		rd.forward(request, response);

	}
	
	
}
