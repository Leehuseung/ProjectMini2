package kr.co.org.jejutour.tour.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.org.jejutour.common.page.TouristPageResult;
import kr.co.org.jejutour.db.MyAppSqlConfig;
import kr.co.org.jejutour.repository.dao.TouristMapper;
import kr.co.org.jejutour.repository.vo.MemberVO;
import kr.co.org.jejutour.repository.vo.TouristPageVO;
import kr.co.org.jejutour.repository.vo.TouristVO;

@WebServlet("/view/tourist/touristlist.do")
public class ListBoardController extends HttpServlet {
	
	private TouristMapper mapper;
	
	public ListBoardController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(TouristMapper.class);
	}
	
	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		TouristPageVO page = new TouristPageVO();
		
		//관리자만 글쓰기 가능	
		try {
			HttpSession session = request.getSession();
			MemberVO user = (MemberVO)session.getAttribute("user");
			if(user.getId().equals("admin")) {
				request.setAttribute("idAdmin", user.getId());
			}
		}catch(Exception e) {
			
		}
		
		// 페이지 처리
		int pageNo = 1;
		try {
			pageNo = Integer.parseInt(request.getParameter("pageNo"));
			page.setPageNo(pageNo);
		} catch (Exception e) {
			
		}

		List<TouristVO> tourList = new ArrayList<>();
		//파일첨부
		List<String> imgFile = new ArrayList<>();

		for(int i = 0; i<tourList.size() ; i++) {
			TouristVO board = tourList.get(i);
			
			//filePath의 보드 하위 파일 경로 4가지를 불러옴
			List<String> filePath = mapper.selectTouristFilesByNo(board.getBoardNo());
//					System.out.println("파일패쓰 사이즈00"+filePath.size());
			//main 사진만 한개만 imgFile 배열로 올려줌
			for(int k = 0; k < 1 ; k ++) {
				imgFile.add(filePath.get(k));
			}
		}
		
//				System.out.println(boardList.size());
		
		request.setAttribute("imgFile", imgFile);
		
		// 게시물 목록 가져오기
		request.setAttribute("list", mapper.selectTouristBoard(page));
		
		// 페이징 부분
		request.setAttribute("pageResult", new TouristPageResult(pageNo, mapper.selectTouristBoardCount()));
		
		request.getRequestDispatcher("tourist-main.jsp").forward(request, response);

	}
}
