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


@WebServlet("/view/member/signup.do")
public class SignUpController extends HttpServlet {
	private MemberMapper mapper;
	public SignUpController () {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(MemberMapper.class);
	}
	public void service(HttpServletRequest request, HttpServletResponse response) 
			throws IOException, ServletException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		MemberVO member = new MemberVO();		
		
		member.setName(request.getParameter("name"));	
		
		String salt = SHA256Util.generateSalt();
		 
		if(request.getParameter("pass1").equals(request.getParameter("pass2"))) {
		String newPassword = SHA256Util.getEncrypt(request.getParameter("pass1"), salt);
				member.setPass(newPassword);
				member.setSalt(salt);
		}

		member.setEmail(request.getParameter("email"));	
		member.setId(request.getParameter("id"));			
		
		mapper.insertMember(member);
		
		request.getRequestDispatcher("/view/member/loginform.jsp")
	       .forward(request, response);
	
	}
}
