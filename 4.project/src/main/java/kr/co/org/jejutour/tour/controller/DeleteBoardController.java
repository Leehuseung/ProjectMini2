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

@WebServlet("/view/tourist/deleteboard.do")
public class DeleteBoardController extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException {
		TouristMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(TouristMapper.class);
		int no = Integer.parseInt(request.getParameter("no"));
		mapper.deleteTouristBoard(no);
		mapper.deleteTouristFile(no);
		
		
		response.sendRedirect("/jeju/view/tourist/touristlist.do");
	}
}
