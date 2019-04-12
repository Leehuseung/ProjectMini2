package kr.co.org.jejutour.tour.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.org.jejutour.db.MyAppSqlConfig;
import kr.co.org.jejutour.repository.dao.TouristMapper;
import kr.co.org.jejutour.repository.vo.MemberVO;
import kr.co.org.jejutour.repository.vo.TouristFileVO;
import kr.co.org.jejutour.repository.vo.TouristVO;

@WebServlet("/view/tourist/updateboard.do")
public class UpdateController extends HttpServlet {
	
	private TouristMapper mapper;
	
	public UpdateController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(TouristMapper.class);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException {
		response.setContentType("text/html; charset=utf-8");
		
		// 루트
		String path = "C:/bit2019/tomcat-work/wtpwebapps/jeju/resources/images/tourist";
		
//		// 저장할 폴더 자동생성(일자별로)
//		SimpleDateFormat sdf = new SimpleDateFormat("/yyyy/MM/dd/");
//		String path = "/board" + sdf.format(new Date());
//		File file = new File(uploadRoot + path);
//		if(file.exists() == false) file.mkdirs();
		
		try {
		MultipartRequest mRequest = new MultipartRequest(
				request,
				path, // 경로
				1024 * 1024 * 100,   // 최대사이즈  1kb  1mb  100mb
				"utf-8",             // 파라미터 인코딩(한글처리)
				new DefaultFileRenamePolicy()  // 중복이름 넘버링
				);
		
		System.out.println("파일 업로드 성공함...");
		
		
		
		HttpSession session = request.getSession();
		MemberVO user = (MemberVO)session.getAttribute("user");
		
		System.out.println("no :" + request.getParameter("no"));
		int no = Integer.parseInt(request.getParameter("no"));
		System.out.println("no :" + no);
		
		TouristVO t = mapper.selectTouristBoardByNo(no);
		
		t.setBoardNo(no);
		t.setMemberNo(user.getMemberNo());
		t.setTitle(mRequest.getParameter("title"));
		t.setNomination(mRequest.getParameter("nomination"));
		t.setTag(mRequest.getParameter("tag"));
		t.setSimpleIntroduce(mRequest.getParameter("simpleIntroduce"));
		t.setIntroduce(mRequest.getParameter("introduce"));
		t.setFee(mRequest.getParameter("fee"));
		t.setAddress(mRequest.getParameter("address"));
		t.setPurpose(mRequest.getParameter("purpose"));
		t.setWeekday(mRequest.getParameter("weekday"));
		t.setWeekend(mRequest.getParameter("weekend"));
		t.setContact(mRequest.getParameter("contact"));
		t.setContentTitle(mRequest.getParameter("contentTitle"));
		t.setContent(mRequest.getParameter("content"));
		mapper.updateTouristBoard(t);
		
		String formName= "";
		String FileName = "";
		System.out.println(mRequest.getParameter("attach1"));
		if(mRequest.getFile("attach1")==null ||
		    mRequest.getFile("attach2")==null ||
		    mRequest.getFile("attach3")==null ||
    		mRequest.getFile("attach4")==null ||
    		mRequest.getFile("attach5")==null ||
		    mRequest.getFile("attach6")==null ) {
 		   response.sendRedirect("detailboard.do?no=" + no);				
 		   System.out.println("return됨");
		   return;
		}
		mapper.deleteTouristFile(no);
		
		
		Enumeration efiles = mRequest.getFileNames();
		int i = 0;
		while(efiles.hasMoreElements() ){
	    	formName = (String)efiles.nextElement();
	    	FileName=mRequest.getFilesystemName(formName);
	    	System.out.println("파일이름은 : "+FileName);
	    	System.out.println("");
	    	TouristFileVO fileVO = new TouristFileVO();
			fileVO.setPath("/jeju/resources/images/tourist/"+ FileName);
			fileVO.setName(FileName);
			fileVO.setBoardNo(no);
			mapper.writeTouristBoardFileNoneSe(fileVO);
			
		}
		
		
		response.sendRedirect("detailboard.do?no=" + no);
		
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
