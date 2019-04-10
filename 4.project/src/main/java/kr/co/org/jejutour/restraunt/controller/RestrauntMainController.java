package kr.co.org.jejutour.restraunt.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.org.jejutour.db.MyAppSqlConfig;
import kr.co.org.jejutour.repository.dao.RestrauntMapper;
import kr.co.org.jejutour.repository.vo.RestrauntBoardVO;
import kr.co.org.jejutour.repository.vo.RestrauntFileVO;

@WebServlet("/view/restraunt/restraunt_main.do")
public class RestrauntMainController extends HttpServlet{
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RestrauntMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(RestrauntMapper.class);
		List<RestrauntBoardVO> boardList = mapper.selectRestrauntBoard();
		List<RestrauntFileVO> files = mapper.selectRestrauntFile();
		List<String> imgFile = new ArrayList<>();
		
		for(int i=0;i<files.size();) {
			RestrauntFileVO file = files.get(i);
			imgFile.add(file.getPath());
			i = i+4;
		}
		
		
		request.setAttribute("boardList", boardList); 
		request.setAttribute("imgFile", imgFile);
		
		request.getRequestDispatcher("/view/restraunt/restraunt_main.jsp").forward(request, response);								
	}
}
