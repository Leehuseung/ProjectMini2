package kr.co.org.jejutour.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.org.jejutour.db.MyAppSqlConfig;
import kr.co.org.jejutour.repository.dao.MemberMapper;
import kr.co.org.jejutour.repository.vo.MemberVO;

@WebServlet("/view/member/check.do")
public class CheckController extends HttpServlet {
	private MemberMapper mapper;
	
	public CheckController () {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(MemberMapper.class);
	}
	
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		MemberVO member = new MemberVO();
		PrintWriter out = response.getWriter();
		
		if(request.getParameter("id") != null) {			
			int countId = mapper.selectId(request.getParameter("id"));		
			out.println(countId);	
			member.setId(request.getParameter("id"));
			out.close();
		}
		if(request.getParameter("email") != null) {
			int countEmail = mapper.selectEmail(request.getParameter("email"));			
			out.println(countEmail);
			member.setEmail(request.getParameter("email"));						
			out.close();
			
		}
		
	}
}
