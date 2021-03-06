package kr.co.org.jejutour.member.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.org.jejutour.db.MyAppSqlConfig;
import kr.co.org.jejutour.repository.dao.MemberMapper;
import kr.co.org.jejutour.repository.vo.MemberVO;

@WebServlet("/view/member/delete.do")
public class DeleteController  extends HttpServlet {
	
	private MemberMapper mapper;
	
	public DeleteController () {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(MemberMapper.class);
	}
	
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		HttpSession session = request.getSession();
		MemberVO user = (MemberVO)session.getAttribute("user");
		String pass1 = request.getParameter("pass1");
		String pass2 = request.getParameter("pass2");
		
		PrintWriter out = response.getWriter();
		
		
		if(user.getId() != null) {
			if(pass1.equals(pass2) && user.getPass().equals(pass1)) {				
				mapper.deleteInfo(user);
				session.removeAttribute(user.getId());
				out.println(1);
			}else {
				out.println(0);
			}
			
		}
		
	}
}
