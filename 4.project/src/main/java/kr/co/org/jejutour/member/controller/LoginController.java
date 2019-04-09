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

@WebServlet("/view/member/login.do")
public class LoginController extends HttpServlet {
	
	private MemberMapper mapper;
	
	public LoginController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(MemberMapper.class);
	}
	
	public void service(HttpServletRequest request, HttpServletResponse response) 
			throws IOException, ServletException {	
		
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		HttpSession session = request.getSession();
		
		MemberVO member = new MemberVO();
		member.setId(id);
		member.setPass(pass);
		
		MemberVO user = mapper.selectLogin(member);
		PrintWriter out = response.getWriter();
		
		if (user == null) {
			try {				
                out.println(0);
                
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
	        session.setAttribute("user", user);
	        session.setAttribute("id", user.getId());	        
	        
	        out.println(1);
        } 
	}
}
