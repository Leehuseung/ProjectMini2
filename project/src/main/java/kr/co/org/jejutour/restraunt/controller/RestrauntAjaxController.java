package kr.co.org.jejutour.restraunt.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.org.jejutour.db.MyAppSqlConfig;
import kr.co.org.jejutour.repository.dao.RestrauntMapper;

@WebServlet("/view/restraunt/restraunt_ajax.do")
public class RestrauntAjaxController extends HttpServlet{
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		   response.setContentType("text/html; charset=utf-8");
		   PrintWriter out = response.getWriter();
		   RestrauntMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(RestrauntMapper.class);
		   int num = Integer.parseInt(request.getParameter("num"));
		   
		   if(request.getParameter("minus") != null) {
			   mapper.updateRestrauntBoardLikeCntM(num);
		   }else {
			   mapper.updateRestrauntBoardLikeCnt(num);
		   }
		   int cnt =mapper.selectRestrauntBoardByNo(num).getLikeCnt();
	       out.println(cnt);
	       out.close();
	
	}
}
