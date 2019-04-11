package kr.co.org.jejutour.review.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.org.jejutour.db.MyAppSqlConfig;
import kr.co.org.jejutour.repository.dao.ReviewMapper;
import kr.co.org.jejutour.repository.vo.MemberVO;
import kr.co.org.jejutour.repository.vo.ReviewVO;

@WebServlet("/view/review/delete.do")
public class DeleteController extends HttpServlet{
	private ReviewMapper mapper;
	public DeleteController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(ReviewMapper.class);
	}
	
	public void service(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException {
		HttpSession session = request.getSession();
		ReviewVO r = new ReviewVO();
		MemberVO user = (MemberVO)session.getAttribute("user");
//		request.getParameter("user.getMemberNo()");
		int no = Integer.parseInt(request.getParameter("no"));
		
		mapper.deleteReview(r);
		response.sendRedirect("list.do");
	
	}
}
