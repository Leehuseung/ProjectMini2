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


@WebServlet("/view/review/write.do")
public class WriteController extends HttpServlet{
	public ReviewMapper mapper;
	
	public WriteController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(ReviewMapper.class);
	}
	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		HttpSession session = request.getSession();
		MemberVO user = (MemberVO)session.getAttribute("user");
		ReviewVO r = new ReviewVO();
		r.setMemberNo(user.getMemberNo());
		System.out.println(user.getMemberNo());
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String rating = request.getParameter("ratingCategory");
		String review = request.getParameter("reviewCategory");
//		if(title!="" && content!="" && rating!="" && review!="");
		r.setTitle(title);
		//request.getParameter("ratingCategory")
		//form태그에서 넘어올때는 name으로 넘어오니까 일치시켜야함.
		
		//jsp파일로 r이라는 reviewVO를 넘겨주는 거니까 jsp에는 vo에 정의되어 있는 변수명이랑 일치시켜야 함.
		r.setRatingCategoryNo(rating);
//		System.out.println(request.getParameter("reviewCategory"));
		r.setReviewCategoryNo(request.getParameter("reviewCategory"));
		r.setContent(content);
		
		
		mapper.insertReview(r);
		response.sendRedirect("detail.do?no=" + r.getBoardNo());

		
		
//		int count = mapper.writeCheck(r);
//		PrintWriter out = response.getWriter();
//		
//		request.setAttribute("review", r);
//		request.getRequestDispatcher("detail.jsp").forward(request, response);
//		Integer[] send = new Integer[2];
//		send[0] = Integer.parseInt(new Gson().toJson(count));
//		send[1] = r.getBoardNo();
//		
//		out.println(send);
//		System.out.println(count);
//		out.close();
	}
}
