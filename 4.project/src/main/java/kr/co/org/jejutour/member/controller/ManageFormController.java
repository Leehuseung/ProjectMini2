package kr.co.org.jejutour.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.org.jejutour.db.MyAppSqlConfig;
import kr.co.org.jejutour.repository.dao.MemberMapper;

@WebServlet("/view/member/manage.do")
public class ManageFormController extends HttpServlet {
	
	private MemberMapper mapper;
	
	public ManageFormController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(MemberMapper.class);
	}
	
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		request.setAttribute("member",mapper.selectMemberList());

		request.getRequestDispatcher("/view/member/manageform.jsp")
	       .forward(request, response);
		
	}
}
