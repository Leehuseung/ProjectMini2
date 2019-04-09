package kr.co.org.jejutour.restraunt.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import kr.co.org.jejutour.db.MyAppSqlConfig;
import kr.co.org.jejutour.repository.dao.RestrauntMapper;

@WebServlet("/view/restraunt/restraunt_ajax.do")
public class RestrauntSelectboxAjaxController {
		public void service (HttpServletRequest request, HttpServletResponse response) throws IOException,ServletException{
			System.out.println("이수안");
			RestrauntMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(RestrauntMapper.class);
			int no = Integer.parseInt(request.getParameter("id"));
			List<String> list = mapper.selectRestrauntLoacationByNo(2);
			PrintWriter out = response.getWriter();
			out.println(new Gson().toJson(list));			
			out.close();
	}
	
}
