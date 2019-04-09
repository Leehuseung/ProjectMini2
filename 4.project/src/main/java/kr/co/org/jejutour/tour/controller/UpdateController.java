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

@WebServlet("/view/tourist/updateboard.do")
public class UpdateController extends HttpServlet {
	
	private TouristMapper mapper;
	
	public UpdateController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(TouristMapper.class);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException {
		request.setCharacterEncoding("utf-8");
		
		TouristVO t = new TouristVO();
		
		t.setTitle(request.getParameter("title"));
		t.setNomination(request.getParameter("nomination"));
		t.setTag(request.getParameter("tag"));
		t.setSimpleIntroduce(request.getParameter("simpleIntroduce"));
		t.setIntroduce(request.getParameter("introduce"));
		t.setFee(request.getParameter("fee"));
		t.setAddress(request.getParameter("address"));
		t.setPurpose(request.getParameter("purpose"));
		t.setWeekday(request.getParameter("weekday"));
		t.setWeekend(request.getParameter("weekend"));
		t.setContact(request.getParameter("contact"));
		t.setContentTitle(request.getParameter("contentTitle"));
		t.setContent(request.getParameter("content"));
		mapper.updateTouristBoard(t);

		response.sendRedirect("detailboard.do?no=" + Integer.parseInt(request.getParameter("no")));
	}
}
