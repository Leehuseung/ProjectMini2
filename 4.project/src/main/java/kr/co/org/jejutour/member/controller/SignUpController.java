package kr.co.org.jejutour.member.controller;

import java.io.IOException;

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
		
		MemberVO member = new MemberVO();		
		member.setName(request.getParameter("name"));
		member.setId(request.getParameter("id"));

		if(request.getParameter("pass1").equals(request.getParameter("pass2"))) {
			member.setPass(request.getParameter("pass1"));
		}
		member.setEmail(request.getParameter("email"));
		System.out.println(member.getId());
		System.out.println(member.getName());
		System.out.println(member.getPass());
		System.out.println(member.getEmail());
		mapper.insertMember(member);

	}
}
