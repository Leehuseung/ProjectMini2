package kr.co.org.jejutour.accomodation.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.org.jejutour.db.MyAppSqlConfig;
import kr.co.org.jejutour.repository.dao.AccomodationMapper;
import kr.co.org.jejutour.repository.vo.AccInfoVO;

@WebServlet("/view/accomodation/detail.do")
public class AccomoDetailController extends HttpServlet {
	AccomodationMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(AccomodationMapper.class);

	@Override
public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		AccInfoVO board = mapper.selectAccInfo(22);
	request.setAttribute("board",board);
	System.out.println(board.getHomepage());
	RequestDispatcher rd = request.getRequestDispatcher(
			"accomo_detail.jsp"
			);
	rd.forward(request, response);
	
}
}
