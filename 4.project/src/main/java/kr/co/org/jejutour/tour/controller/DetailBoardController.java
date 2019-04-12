package kr.co.org.jejutour.tour.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.org.jejutour.db.MyAppSqlConfig;
import kr.co.org.jejutour.repository.dao.TouristMapper;
import kr.co.org.jejutour.repository.vo.MemberVO;
import kr.co.org.jejutour.repository.vo.RestrauntBoardVO;
import kr.co.org.jejutour.repository.vo.TouristVO;

@WebServlet("/view/tourist/detailboard.do")
public class DetailBoardController extends HttpServlet {
	
	private TouristMapper mapper;
	
	public DetailBoardController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(TouristMapper.class);
	}
	
	public void service(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException {
		
		//관리자만 글쓰기 가능
		try {
			HttpSession session = request.getSession();
			MemberVO user = (MemberVO)session.getAttribute("user");
			if(user.getId().equals("admin")) {
				request.setAttribute("idAdmin", user.getId());
			}
		}catch(Exception e) {
			
		}
		
		// 게시물 상세 정보 조회하기
		int no = Integer.parseInt(request.getParameter("no"));
		System.out.println("no : " + no);
		// 조회수 증가
		mapper.updateTouristViewCnt(no);
		System.out.println("조회수 증가");
		
		
		TouristVO tourist = mapper.selectTouristBoardByNo(no);
		List<String> files = mapper.selectTouristFilesByNo(no);
		
		// 게시물 상세 정보
		request.setAttribute("tourist", tourist);
		
		// 댓글 목록 공유
//		request.setAttribute("commentList", mapper.selectComment(no));
		
		// 파일 목록 공유
		request.setAttribute("fileList", files);
		
		RequestDispatcher rd = request.getRequestDispatcher("tourist-detail.jsp");
		rd.forward(request, response);

	}
	
	
}
