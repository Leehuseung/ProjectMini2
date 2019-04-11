package kr.co.org.jejutour.restraunt.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.org.jejutour.common.page.RestrauntPageResult;
import kr.co.org.jejutour.db.MyAppSqlConfig;
import kr.co.org.jejutour.repository.dao.RestrauntMapper;
import kr.co.org.jejutour.repository.vo.MemberVO;
import kr.co.org.jejutour.repository.vo.RestrauntBoardVO;
import kr.co.org.jejutour.repository.vo.RestrauntPageVO;

@WebServlet("/view/restraunt/restraunt_main.do")
public class RestrauntMainController extends HttpServlet{
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RestrauntMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(RestrauntMapper.class);
		
		RestrauntPageVO page = new RestrauntPageVO();
		
		//관리자만 글쓰기 가능	
		try {
			HttpSession session = request.getSession();
			MemberVO user = (MemberVO)session.getAttribute("user");
			if(user.getId().equals("admin")) {
				request.setAttribute("idAdmin", user.getId());
			}
		}catch(Exception e) {
			
		}
		
		
		int pageNo = 1;
		//페이지 처리 부분
		try {
			pageNo = Integer.parseInt(request.getParameter("pageNo"));
			page.setPageNo(pageNo);
			
		} catch (Exception e) {}															
//		System.out.println("페이지번호는"+page.getPageNo());
		
		request.setAttribute("category", 1);
		
		//hashMap 을 이용해 마이바티스에서 2개 파라미터값 이용 가능... 페이지번호  / 푸드 카테고리 같이 이용한 sql문 작성
		HashMap<String,Object> map = new HashMap<String,Object>();
		map.put("begin",page.getBegin());
		map.put("end",page.getEnd());
		map.put("foodCategory",1);
		
		
		
		if(request.getParameter("num") != null ) {
			int num = Integer.parseInt(request.getParameter("num"));
			if(num != 1) {
				map.remove("foodCategory");
				map.put("foodCategory",num);
				request.setAttribute("category", num);
			}
		}
//		System.out.println("페이지비긴"+map.get("begin"));
//		System.out.println("페이지end"+map.get("end"));
//		System.out.println("foodcategory는"+map.get("foodCategory"));
		
		
		
		//map 에서 설정해준 foodCategory 값을 이용해서 카테고리 별로 글을 불러올수 있음..
		List<RestrauntBoardVO> boardList = mapper.selectRestrauntBoard(map); 
		request.setAttribute("boardList", boardList); 
		
		
		
		//파일첨부
		List<String> imgFile = new ArrayList<>();

		for(int i = 0; i<boardList.size() ; i++) {
			RestrauntBoardVO board = boardList.get(i);
			
			//filePath의 보드 하위 파일 경로 4가지를 불러옴
			List<String> filePath = mapper.selectRestrauntFileByNo(board.getBoardNo());
//			System.out.println("파일패쓰 사이즈00"+filePath.size());
			//main 사진만 한개만 imgFile 배열로 올려줌
			for(int k = 0; k < 1 ; k ++) {
				imgFile.add(filePath.get(k));
			}
		}
		
//		System.out.println(boardList.size());
		
		request.setAttribute("imgFile", imgFile);
		request.setAttribute("pageResult", new RestrauntPageResult(pageNo, mapper.selectBoardListCount((int)map.get("foodCategory"))));
		request.getRequestDispatcher("/view/restraunt/restraunt_main.jsp").forward(request, response);								
	}
}




