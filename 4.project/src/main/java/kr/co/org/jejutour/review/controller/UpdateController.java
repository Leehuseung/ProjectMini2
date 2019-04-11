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


@WebServlet("/view/review/update.do")
public class UpdateController extends HttpServlet{
	public ReviewMapper mapper;
	
	public UpdateController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(ReviewMapper.class);
	}
	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		MemberVO user = (MemberVO)session.getAttribute("user");
		ReviewVO r = new ReviewVO();
		
		int no = Integer.parseInt(request.getParameter("no"));
		r.setBoardNo(no);
		r.setContent(request.getParameter("content"));
		r.setTitle(request.getParameter("title"));
		r.setRatingCategoryNo(request.getParameter("ratingCategory"));
		r.setReviewCategoryNo(request.getParameter("reviewCategory"));
		r.setMemberNo(user.getMemberNo());
		
		mapper.updateReview(r);
		response.sendRedirect("detail.do?no="+no);
		

	}
}
