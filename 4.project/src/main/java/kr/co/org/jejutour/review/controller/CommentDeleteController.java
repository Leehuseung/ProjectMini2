package kr.co.org.jejutour.review.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import kr.co.org.jejutour.db.MyAppSqlConfig;
import kr.co.org.jejutour.repository.dao.ReviewMapper;
import kr.co.org.jejutour.repository.vo.MemberVO;
import kr.co.org.jejutour.repository.vo.ReviewCommentVO;
import kr.co.org.jejutour.repository.vo.ReviewVO;


@WebServlet("/view/review/comment-delete.do")
public class CommentDeleteController extends HttpServlet{
	public ReviewMapper mapper;
	
	public CommentDeleteController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(ReviewMapper.class);
	}
	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
//		HttpSession session = request.getSession();
//		MemberVO user = (MemberVO)session.getAttribute("user");
//		response.setCharacterEncoding("text/html; charset=utf-8;");
//		request.setCharacterEncoding("utf-8");
		PrintWriter out = response.getWriter();

		
		int no = Integer.parseInt(request.getParameter("commentNo"));
//		rc.setMemberNo(Integer.parseInt(request.getParameter("memberNo")));
//		rc.setMemberNo(user.getMemberNo());
		mapper.deleteComment(no);
		System.out.println("삭제할 댓글 주인 : "+request.getParameter("memberNo"));
//		System.out.println("삭제할 댓글 주인 : "+user.getMemberNo());
		out.println(new Gson().toJson(no));
		out.close();
//			
		

	}
}
