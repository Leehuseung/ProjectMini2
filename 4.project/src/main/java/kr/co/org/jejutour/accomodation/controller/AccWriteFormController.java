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
import kr.co.org.jejutour.repository.vo.CodeVO;

@WebServlet("/view/accomodation/writeForm.do")
public class AccWriteFormController extends HttpServlet {
	
	AccomodationMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(AccomodationMapper.class);

	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		RequestDispatcher rd = request.getRequestDispatcher(
				"accomo_write.jsp"
				);
		rd.forward(request, response);
	
	}
	
	
}
