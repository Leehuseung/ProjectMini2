package kr.co.org.jejutour.review.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

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


@WebServlet("/view/review/comment-list.do")
public class CommentListController extends HttpServlet{
	public ReviewMapper mapper;
	
	public CommentListController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(ReviewMapper.class);
	}
	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		response.setContentType("text/html; charset=utf-8");
		HttpSession session = request.getSession();
		MemberVO user = (MemberVO)session.getAttribute("user");
//		int num = user.getMemberNo();
		int no = Integer.parseInt(request.getParameter("no"));
//		user.setMemberNo(num);
		PrintWriter out = response.getWriter();
//		if(no != 0 && num != 0) {
			List<ReviewCommentVO> rc = mapper.selectListCommentByNo(no);
			out.println(new Gson().toJson(rc));
			out.close();
			
		

	}
}
