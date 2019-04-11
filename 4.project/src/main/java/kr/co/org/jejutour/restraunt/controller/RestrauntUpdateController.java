package kr.co.org.jejutour.restraunt.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.org.jejutour.db.MyAppSqlConfig;
import kr.co.org.jejutour.repository.dao.RestrauntMapper;
import kr.co.org.jejutour.repository.vo.MemberVO;
import kr.co.org.jejutour.repository.vo.RestrauntBoardVO;
import kr.co.org.jejutour.repository.vo.RestrauntFileVO;

@WebServlet("/view/restraunt/restraunt_update.do")
public class RestrauntUpdateController extends HttpServlet{
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
		response.setContentType("text/html; charset=utf-8");
		RestrauntMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(RestrauntMapper.class);
			
			String path = "C:/bit2019/tomcat-work/wtpwebapps/jeju/resources/images/restraunt";
			
			try {
				MultipartRequest mRequest = new MultipartRequest(
						request, 
						path,   
						1024 * 1024 * 100,  // 
						"utf-8",
						new DefaultFileRenamePolicy() 
						);
				
			
			
			HttpSession session = request.getSession();
			MemberVO user = (MemberVO)session.getAttribute("user");
			
			
			int num = Integer.parseInt(mRequest.getParameter("num"));
			RestrauntBoardVO board = mapper.selectRestrauntBoardByNo(num);
			System.out.println("num 번호"+board.getMemberNo());
			board.setBoardNo(num);
			board.setMemberNo(user.getMemberNo());
			board.setName(mRequest.getParameter("name"));
			board.setLocation(mRequest.getParameter("location"));
			board.setIntro(mRequest.getParameter("intro"));
			board.setBusinessHours(mRequest.getParameter("businessHours"));
			board.setAmendity(mRequest.getParameter("amendity"));
			board.setFoodCategory(Integer.parseInt(mRequest.getParameter("foodCategory")));
			System.out.println("board의 번호"+board.getMemberNo());
			mapper.updateRestruantBoard(board);
			
			String formName= "";
			String FileName = "";

			 
			 
			mapper.deleteRestrauntFile(num);
			 
			Enumeration efiles = mRequest.getFileNames();
			int i = 0;
			while(efiles.hasMoreElements() ){
		    	formName = (String)efiles.nextElement();
		    	FileName=mRequest.getFilesystemName(formName);
		    	
//		    	System.out.println(FileName);
		    	if (FileName != null & i == 0) {
//					File f = mRequest.getFile(formName);
					RestrauntFileVO fileVO = new RestrauntFileVO();
					fileVO.setPath("/jeju/resources/images/restraunt/"+FileName);
					fileVO.setName(FileName);
					fileVO.setBoardNo(num);
					mapper.insertFileNoneSe(fileVO);
				}
				
			}
			response.sendRedirect("/jeju/view/restraunt/restraunt_detail1.do?num="+num);
		
			}catch(Exception e) {
				e.printStackTrace();
			}
			
			
			
		}
}





