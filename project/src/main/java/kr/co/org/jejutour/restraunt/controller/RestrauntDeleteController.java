package kr.co.org.jejutour.restraunt.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.org.jejutour.db.MyAppSqlConfig;
import kr.co.org.jejutour.repository.dao.RestrauntMapper;

@WebServlet("/view/restraunt/restraunt_delete.do")
public class RestrauntDeleteController extends HttpServlet{
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RestrauntMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(RestrauntMapper.class);
		int num = Integer.parseInt(request.getParameter("num"));
		mapper.deleteRestrauntBoard(num);
		mapper.deleteRestrauntFile(num);
		
		
		
		response.sendRedirect("/jeju/view/restraunt/restraunt_main.do");
	}
}
