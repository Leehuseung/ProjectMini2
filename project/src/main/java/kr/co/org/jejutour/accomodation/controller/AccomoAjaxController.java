package kr.co.org.jejutour.accomodation.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.co.org.jejutour.db.MyAppSqlConfig;
import kr.co.org.jejutour.repository.dao.AccomodationMapper;
import kr.co.org.jejutour.repository.vo.CodeVO;

@WebServlet("/view/accomodation/ajax.do")
public class AccomoAjaxController extends HttpServlet {
	AccomodationMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(AccomodationMapper.class);

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		int city =	Integer.parseInt(request.getParameter("city"));
		
		System.out.println("city: " + city);
		
		List<CodeVO> list =mapper.selectCodeTown(city);
		for(CodeVO board :list) {
		System.out.println(board.getParentId() + board.getName() + board.getId());
		
		
		String data = new Gson().toJson(list);
		System.out.println(data);
		
		PrintWriter out = response.getWriter();
		out.println(new Gson().toJson(list));
		out.close();
		
		}
		
	}
		
}
