package kr.co.org.jejutour.accomodation.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.co.org.jejutour.db.MyAppSqlConfig;
import kr.co.org.jejutour.repository.dao.AccomodationMapper;

@WebServlet("/view/accomodation/mAjax.do")
public class MainAjaxController extends HttpServlet {
	AccomodationMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(AccomodationMapper.class);

	@Override
public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String city = request.getParameter("city");
		System.out.println("city" + city);
		
		String type = request.getParameter("type");
		System.out.println("type" + type);
		
		if(city.equals("전체")&& type.equals("전체")) {
			
		}
		
		if(city.equals("전체") && !type.equals("전체")) {
			
		}
		
		if(!city.equals("전체") && !type.equals("전체")) {
			
		}
		
		if(!city.equals("전체") && !type.equals("전체")) {
			
		}
		
		
}
	
}
