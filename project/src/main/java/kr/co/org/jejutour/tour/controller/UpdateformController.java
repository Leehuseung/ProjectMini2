package kr.co.org.jejutour.tour.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.org.jejutour.db.MyAppSqlConfig;
import kr.co.org.jejutour.repository.dao.TouristMapper;
import kr.co.org.jejutour.repository.vo.TouristVO;

@WebServlet("/view/tourist/updateboardform.do")
public class UpdateformController extends HttpServlet {
	
	private TouristMapper mapper;
	
	public UpdateformController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(TouristMapper.class);
	}
	
	public void service(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException {
		// 게시물 상세 정보 조회하기
		int no = Integer.parseInt(request.getParameter("no"));
		System.out.println("no : " + no);
		
		TouristVO board = mapper.selectTouristBoardByNo(no);
		List<String> files = mapper.selectTouristFilesByNo(no);
		
		request.setAttribute("tourist", board);
		request.setAttribute("files", files);
		
		RequestDispatcher rd = request.getRequestDispatcher("tourist-update.jsp");
		rd.forward(request, response);
	}
}
