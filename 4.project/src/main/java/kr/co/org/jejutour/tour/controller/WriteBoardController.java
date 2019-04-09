package kr.co.org.jejutour.tour.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.org.jejutour.db.MyAppSqlConfig;
import kr.co.org.jejutour.repository.dao.TouristMapper;
import kr.co.org.jejutour.repository.vo.MemberVO;
import kr.co.org.jejutour.repository.vo.TouristVO;

@WebServlet("/view/tourist/writeboard.do")
public class WriteBoardController extends HttpServlet{
	
	private TouristMapper mapper;
//	private MemberMapper bmapper;
	
	public WriteBoardController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(TouristMapper.class);
//		bmapper = MyAppSqlConfig.getSqlSession().getMapper(MemberMapper.class);
	}
	
	
	public void service(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException {
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
	    MemberVO user = (MemberVO)session.getAttribute("user");
	        
	    System.out.println("aaaaa");
	    System.out.println(user.getEmail());
		System.out.println(user.getId());
		System.out.println(user.getName());
		System.out.println(user.getPass());
		System.out.println(user.getJoinDate());
		System.out.println(user.getMemberNo());
		// 데이터베이스에 저장 파라미터값 읽기

		TouristVO t = new TouristVO();

		t.setMemberNo(user.getMemberNo());

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
//		System.out.println(request.getParameter("title"));
//		System.out.println(request.getParameter("content"));
		mapper.writeTouristBoard(t);

		response.sendRedirect("detailboard.do?no=" + t.getBoardNo());

	}
	
	
}
