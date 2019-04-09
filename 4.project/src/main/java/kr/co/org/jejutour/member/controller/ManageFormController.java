package kr.co.org.jejutour.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.org.jejutour.common.page.PageResult;
import kr.co.org.jejutour.common.page.TouristPageResult;
import kr.co.org.jejutour.db.MyAppSqlConfig;
import kr.co.org.jejutour.repository.dao.MemberMapper;
import kr.co.org.jejutour.repository.vo.MemberPageVO;
import kr.co.org.jejutour.repository.vo.TouristPageVO;

@WebServlet("/view/member/manage.do")
public class ManageFormController extends HttpServlet {
	
	private MemberMapper mapper;
	
	public ManageFormController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(MemberMapper.class);
	}
	
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		MemberPageVO page = new MemberPageVO();
		
		int pageNo = 1;
		try {
			pageNo = Integer.parseInt(request.getParameter("pageNo"));
			page.setPageNo(pageNo);
			
		} catch (Exception e) {
			
		}
		
		request.setAttribute("member",mapper.selectMemberList(page));
		request.setAttribute("pageResult", new PageResult(pageNo, mapper.selectMemberListCount()));
		request.getRequestDispatcher("/view/member/manageform.jsp")
	       .forward(request, response);
		
	}
}
