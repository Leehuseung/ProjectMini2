package kr.co.org.jejutour.accomodation.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.org.jejutour.db.MyAppSqlConfig;
import kr.co.org.jejutour.repository.dao.AccomodationMapper;
import kr.co.org.jejutour.repository.vo.AccInfoVO;

@WebServlet("/view/accomodation/mainSearch.do")
public class MainSearchController extends HttpServlet {
	AccomodationMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(AccomodationMapper.class);

	@Override
public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		request.setCharacterEncoding("utf-8");
		List<AccInfoVO> list;
		String town = request.getParameter("city");
		System.out.println("city" + town);
		
		String type = request.getParameter("type");
		System.out.println("type" + type);
		
		if(town.equals("전체")&& type.equals("전체")) {
		list = mapper.selectBothAll();
		System.out.println("전체" + list.size());
		request.setAttribute("list", list);
		}
		
		if(town.equals("전체") && !type.equals("전체")) {
			list = mapper.selectOnlyType(type);
			System.out.println("타입만 가져와" + list.size());
			request.setAttribute("list", list);
		}
		
		if(!town.equals("전체") && type.equals("전체")) {
			list = mapper.selectOnlyTown(town);
			System.out.println("마을만 가져와" + list.size());
			
			AccInfoVO board = list.get(0);
				request.setAttribute("board", board);
			System.out.println("가져온거  :" + board.getTown());
			request.setAttribute("list", list);
		}
		
		
		if(!town.equals("전체") && !type.equals("전체")) {
			list = mapper.selectEach(town, type);
			
			System.out.println("모두" + list.size());
			
			request.setAttribute("list", list);
		}
		
		
		RequestDispatcher rd = request.getRequestDispatcher(
				"accomo_main.jsp"
				);
		rd.forward(request, response);
	
	
	
	}
	
}
