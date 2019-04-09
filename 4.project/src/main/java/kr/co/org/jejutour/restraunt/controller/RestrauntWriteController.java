package kr.co.org.jejutour.restraunt.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;

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
		
			String path = "c:/bit2019/workspace/MiniProject2/4.project/src/main/webapp/resources/images/restraunt";

			
			MultipartRequest mRequest = new MultipartRequest(
					request, 
					path, //  
					1024 * 1024 * 100,  // 
					"utf-8" // 
			);
			
			
			HttpSession session = request.getSession();
			MemberVO user = (MemberVO)session.getAttribute("user");
			
			System.out.println(user.getEmail());
			System.out.println(user.getId());
			System.out.println(user.getName());
			System.out.println(user.getPass());
			System.out.println(user.getJoinDate());
			System.out.println(user.getMemberNo());
			// 파라미터 정보를 읽어 데이터베이스에 저장하기
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
				long fileSize = f.length();

				// 데이터베이스에 파일 정보 저장
				RestrauntFileVO fileVO = new RestrauntFileVO();
				fileVO.setPath(path);
				fileVO.setName(systemName);
				mapper.insertFile(fileVO);
			}
			
			response.sendRedirect("/jeju/view/restraunt/restraunt_detail1.do");
		}
}
