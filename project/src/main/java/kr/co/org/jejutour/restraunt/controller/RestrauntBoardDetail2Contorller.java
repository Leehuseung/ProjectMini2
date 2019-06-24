package kr.co.org.jejutour.restraunt.controller;

import java.io.IOException;
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

@WebServlet("/view/restraunt/restraunt_detail2.do")
public class RestrauntBoardDetail2Contorller extends HttpServlet{
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
		RestrauntMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(RestrauntMapper.class);
		int num = Integer.parseInt(request.getParameter("num"));
		RestrauntBoardVO board = mapper.selectRestrauntBoardByNo(num);
		request.setAttribute("board", board);
		request.getRequestDispatcher("/view/restraunt/restraunt_detail2.jsp").forward(request, response);		
	}
}
