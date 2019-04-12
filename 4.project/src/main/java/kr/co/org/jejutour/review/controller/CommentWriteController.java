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
import kr.co.org.jejutour.repository.vo.ReviewCommentVO;


@WebServlet("/view/review/comment-write.do")
public class CommentWriteController extends HttpServlet{
	public ReviewMapper mapper;
	
	public CommentWriteController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(ReviewMapper.class);
	}
	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
        MemberVO user = (MemberVO)session.getAttribute("user");
        ReviewCommentVO rc = new ReviewCommentVO();
		int no = Integer.parseInt((request.getParameter("no")));
		rc.setBoardNo(no);
		rc.setContent(request.getParameter("content"));
		rc.setMemberNo(user.getMemberNo());
		System.out.println(user.getMemberNo());
		mapper.selectReviewCommentCount(no);
		mapper.insertComment(rc);
	
		response.sendRedirect("detail.do?no="+no);
		
		
		
		

	}
}
