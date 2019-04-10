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

@WebServlet("/view/restraunt/restraunt_write.do")
public class RestrauntWriteController extends HttpServlet{
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
		response.setContentType("text/html; charset=utf-8");
		RestrauntMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(RestrauntMapper.class);
		
			String path = "C:/bit2019/workspace/NewMiniProject/4.project/src/main/webapp/resources/images/restraunt";
			
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
			
			RestrauntBoardVO board = new RestrauntBoardVO();
			
			
			board.setMemberNo(user.getMemberNo());
			board.setName(mRequest.getParameter("name"));
			board.setLocation(mRequest.getParameter("location"));
			board.setIntro(mRequest.getParameter("intro"));
			board.setBusinessHours(mRequest.getParameter("businessHours"));
			board.setAmendity(mRequest.getParameter("amendity"));
			board.setFoodCategory(Integer.parseInt(mRequest.getParameter("foodCategory")));
			mapper.insertBoard(board);

			
			
			String formName= "";
			String FileName = "";

			
			Enumeration efiles = mRequest.getFileNames();
			int i = 0;
			int k = 0;
			while(efiles.hasMoreElements() ){
		    	formName = (String)efiles.nextElement();
		    	FileName=mRequest.getFilesystemName(formName);
		    	
//		    	System.out.println(FileName);
		    	if (FileName != null & i == 0) {
//					File f = mRequest.getFile(formName);
					RestrauntFileVO fileVO = new RestrauntFileVO();
					fileVO.setPath("/jeju/resources/images/restraunt/"+FileName);
					fileVO.setName(FileName);
					mapper.insertFile(fileVO);
					
					k=mapper.selectFileByNo(fileVO.getName());
//					System.out.println("보드의 값" + k);
//					System.out.println("if문실행됨");
					i++;
		    	} else {
//					File f = mRequest.getFile(formName);
					System.out.println("else문실행됨");
					RestrauntFileVO fileVO = new RestrauntFileVO();
					fileVO.setPath(path+"/"+FileName);
					fileVO.setName(FileName);
					fileVO.setBoardNo(k);
//					System.out.println(fileVO.getBoardNo());
					mapper.insertFileNoneSe(fileVO);
				}
			}
			
			
			
		
			}catch(Exception e) {
			}
			
			
			// 첨부파일 부분 추가
			
			
			
			response.sendRedirect("/jeju/view/restraunt/restraunt_detail1.do");
		}
}






/*package kr.co.org.jejutour.restraunt.controller;
단일파일 업로드시에
import java.io.File;
import java.io.IOException;

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

@WebServlet("/view/restraunt/restraunt_write.do")
public class RestrauntWriteController extends HttpServlet{
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
		response.setContentType("text/html; charset=utf-8");
		RestrauntMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(RestrauntMapper.class);
		
			String path = "C:/bit2019/workspace/NewMiniProject/4.project/src/main/webapp/resources/images/restraunt";
			
			
			MultipartRequest mRequest = new MultipartRequest(
					request, 
					path, //  
					1024 * 1024 * 100,  // 
					"utf-8",
					new DefaultFileRenamePolicy() 
			);
			
			
			HttpSession session = request.getSession();
			MemberVO user = (MemberVO)session.getAttribute("user");
			
			RestrauntBoardVO board = new RestrauntBoardVO();
			
			
			board.setMemberNo(user.getMemberNo());
			board.setName(mRequest.getParameter("name"));
			board.setLocation(mRequest.getParameter("location"));
			board.setIntro(mRequest.getParameter("intro"));
			board.setBusinessHours(mRequest.getParameter("businessHours"));
			board.setAmendity(mRequest.getParameter("amendity"));
			board.setFoodCategory(Integer.parseInt(mRequest.getParameter("foodCategory")));
			mapper.insertBoard(board);

			// 첨부파일 부분 추가
			String name = "attach";
			File f = mRequest.getFile(name);
			if (f != null) {
				String systemName = mRequest.getFilesystemName(name);
				System.out.println(systemName);
				// 데이터베이스에 파일 정보 저장
				RestrauntFileVO fileVO = new RestrauntFileVO();
				fileVO.setPath(path+"/"+systemName);
				fileVO.setName(systemName);
				mapper.insertFile(fileVO);
			}
			
			response.sendRedirect("/jeju/view/restraunt/restraunt_detail1.do");
		}
}
*/