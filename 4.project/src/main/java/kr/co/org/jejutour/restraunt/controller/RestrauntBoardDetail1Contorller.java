package kr.co.org.jejutour.restraunt.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.org.jejutour.db.MyAppSqlConfig;
import kr.co.org.jejutour.repository.dao.RestrauntMapper;
import kr.co.org.jejutour.repository.vo.MemberVO;
import kr.co.org.jejutour.repository.vo.RestrauntBoardVO;

@WebServlet("/view/restraunt/restraunt_detail1.do")
public class RestrauntBoardDetail1Contorller extends HttpServlet{
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
		RestrauntMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(RestrauntMapper.class);
		
		

		//관리자만 글쓰기 가능
		try {
			HttpSession session = request.getSession();
			MemberVO user = (MemberVO)session.getAttribute("user");
			if(user.getId().equals("admin")) {
				request.setAttribute("idAdmin", user.getId());
			}
		}catch(Exception e) {
			
		}
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		RestrauntBoardVO board = mapper.selectRestrauntBoardByNo(num);
		List<String> files = mapper.selectRestrauntFileByNo(num);
		mapper.updateRestrauntBoardViewCnt(num);;
		
		
		request.setAttribute("files", files);
		request.setAttribute("board", board);
		
		request.getRequestDispatcher("/view/restraunt/restraunt_detail1.jsp").forward(request, response);		

		
		
	}
}
