package kr.co.org.jejutour.tour.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
import kr.co.org.jejutour.repository.dao.TouristMapper;
import kr.co.org.jejutour.repository.vo.MemberVO;
import kr.co.org.jejutour.repository.vo.RestrauntFileVO;
import kr.co.org.jejutour.repository.vo.TouristFileVO;
import kr.co.org.jejutour.repository.vo.TouristVO;

@WebServlet("/view/tourist/writeboard.do")
public class WriteBoardController extends HttpServlet{
	
	private TouristMapper mapper;

	
	public WriteBoardController() {
		mapper = MyAppSqlConfig.getSqlSession().getMapper(TouristMapper.class);
	}
	
	
	public void service(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException {
		response.setContentType("text/html; charset=utf-8");
		
		// 1. 모듈별 디렉토리 생성 저장하기
		
		// 루트
		String uploadRoot = "C:/bit2019/tomcat-work/wtpwebapps/jeju/resources/images/tourist";
		
		// 저장할 폴더 자동생성(일자별로)
		SimpleDateFormat sdf = new SimpleDateFormat("/yyyy/MM/dd/");
		String path = "/board" + sdf.format(new Date());
		File file = new File(uploadRoot + path);
		if(file.exists() == false) file.mkdirs();
		
		try {
		MultipartRequest mRequest = new MultipartRequest(
				request,
				uploadRoot + path, // 경로
				1024 * 1024 * 100,   // 최대사이즈  1kb  1mb  100mb
				"utf-8",             // 파라미터 인코딩(한글처리)
				new DefaultFileRenamePolicy()  // 중복이름 넘버링
				);
		
		System.out.println("파일 업로드 성공함...");
		
		// 데이터베이스에서 참조한후 집어넣을 맴버번호 가져오기
		HttpSession session = request.getSession();
	    MemberVO user = (MemberVO)session.getAttribute("user");
		System.out.println("회원번호 : " + user.getMemberNo());
		// 데이터베이스에 저장 파라미터값 읽기

		TouristVO t = new TouristVO();

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
		mapper.writeTouristBoard(t);

		System.out.println("글등록 끝...");
		
		// 첨부파일 부분 추가
		
		String formName= "";
		String FileName = "";
		Enumeration efiles = mRequest.getFileNames();
		int i = 0;
		int k = 0;
		while(efiles.hasMoreElements() ){
			formName = (String)efiles.nextElement();
	    	FileName = mRequest.getFilesystemName(formName);
	    	
	    	System.out.println(FileName);
	    	if (FileName != null & i == 0) {
				TouristFileVO fileVO = new TouristFileVO();
				fileVO.setPath("/jeju/resources/images/tourist"+ path + FileName);
				fileVO.setName(FileName);
				mapper.writeTouristBoardFile(fileVO);
				
				k=mapper.selectFileByNo(fileVO.getName());
				System.out.println("보드의 값" + k);
				System.out.println("if문실행됨");
				i++;
	    	} else {
				System.out.println("else문실행됨");
				TouristFileVO fileVO = new TouristFileVO();
				fileVO.setPath("/jeju/resources/images/tourist" + path + FileName);
				fileVO.setName(FileName);
				fileVO.setBoardNo(k);
				System.out.println(fileVO.getBoardNo());
				mapper.writeTouristBoardFileNoneSe(fileVO);
			}
		}

		
		
//		Enumeration<String> fNames = mRequest.getFileNames();
//		while(fNames.hasMoreElements() ){
//			String fName = fNames.nextElement();
//	    	File FileName = mRequest.getFile(fName);
//	    	
//	    	System.out.println("파일이름 : " + FileName);
//	    	if (FileName != null) {
//				List<TouristFileVO> tFile = mapper.selectTouristFile();
//				
//				tFile.setPath(uploadRoot + path + "/"+ FileName);
//				System.out.println(tFile.getPath());
//				
//				tFile.setName(FileName);
//				System.out.println(tFile.getName());
//				
//				mapper.writeTouristBoardFile(tFile);
//				System.out.println(tFile.getBoardNo());
//				System.out.println("22222");
//				
//	    	} 
//		}
		
		System.out.println("첨부파일등록 끝...");
		
		response.sendRedirect("detailboard.do?no=" + t.getBoardNo());
		
		}catch(Exception e) {
//			e.printStackTrace();
		}
		
		

	}

	
}
