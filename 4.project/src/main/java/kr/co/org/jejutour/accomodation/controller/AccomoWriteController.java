package kr.co.org.jejutour.accomodation.controller;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import kr.co.org.jejutour.db.MyAppSqlConfig;
import kr.co.org.jejutour.repository.dao.AccomodationMapper;
import kr.co.org.jejutour.repository.vo.AccInfoVO;
@WebServlet("/view/accomodation/write.do")
public class AccomoWriteController extends HttpServlet{
	
	AccomodationMapper mapper = MyAppSqlConfig.getSqlSession().getMapper(AccomodationMapper.class);
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	System.out.println("넘어왔습니다.");
	
	
	response.setContentType("text/html; charset=utf-8");
	request.setCharacterEncoding("utf-8");
	String directory = "../../resources/images/accomodation/";
	
	
	
	MultipartRequest mRequest = new MultipartRequest(
			
			request,
			"c:/bit2019/tomcat-work/wtpwebapps/jeju/resources/images/accomodation",
			1024*1024*100,
			"utf-8",
			new DefaultFileRenamePolicy()
			);
	System.out.println("파일 업로드 성공함...");

	
	AccInfoVO board = new AccInfoVO();  
	String city= mRequest.getParameter("city");
	System.out.println("city: " + city);//
	if(city.equals("1")) {
		board.setCity("제주시");
	}
	if(city.equals("2")) {
		board.setCity("서귀포시");
	}//
	
	String town= mRequest.getParameter("town");
	System.out.println("town: " + town);
	
	if(town.equals("3")) {
		board.setTown("애월읍");
	}
	
	if(town.equals("4")) {
		board.setTown("한림읍");
	}
	if(town.equals("5")) {
		board.setTown("우도");
	}
	if(town.equals("6")) {
		board.setTown("성산읍");
	}
	if(town.equals("7")) {
		board.setTown("남원읍");
	}//
	
	String type = mRequest.getParameter("type");
	System.out.println("type :" + type);
	if(type.equals("1")) {
		board.setType("호텔");
	}
	if(type.equals("2")) {
		board.setType("펜션");
	}
	if(type.equals("3")) {
		board.setType("게스트 하우스");
	}
	
	
	String memberNo = mRequest.getParameter("memberNo");
	System.out.println(memberNo);
	
	String address = mRequest.getParameter("address");
	System.out.println("address: " + address);
	board.setAddress(address);//
	
	String homepage = mRequest.getParameter("homepage");
	System.out.println("homepage" + homepage);
	board.setHomepage(homepage);//
	
	String ment = mRequest.getParameter("ment");
	System.out.println("ment" + ment);
	board.setMent(ment);//
	
	String contact = mRequest.getParameter("contact");
	System.out.println("contact" + contact);
	board.setContact(contact);//
	
	String hotelName = mRequest.getParameter("hotelName");
	System.out.println("hotelName" +hotelName);
	board.setName(hotelName);//
	
	String intro = mRequest.getParameter("intro");
	System.out.println("intro" + intro);
	Enumeration<String> fNames = mRequest.getFileNames();
	System.out.println(fNames.toString());//
	board.setIntro(intro);
	while(fNames.hasMoreElements()) {
		String fName = fNames.nextElement();
	File f = mRequest.getFile(fName);
	if(f!=null) {
		
	if(fName.equals("mainPic")) {
	String fileName = mRequest.getFilesystemName(fName);
	System.out.println("메인 사진입니다.");
	String path =	directory + fileName;
	System.out.println("파일 이름: " + fileName);
		System.out.println("파일경로: " + path );
	System.out.println("-------------------------");
	board.setMainFileName(fileName);
	board.setMainFilePath(path);
	}//inner if
	if(fName.equals("subPic1")) {
		String fileName = mRequest.getFilesystemName(fName);
		System.out.println("서브 사진1입니다.");
		String path =	directory + fileName;
		System.out.println("파일 이름: " + fileName);
			System.out.println("파일경로: " + path );
			
			System.out.println("-------------------------");
		
			board.setSubFileName1(fileName);
			board.setSubFilePath1(path);
	}
	
	if(fName.equals("subPic2")) {
		String fileName = mRequest.getFilesystemName(fName);
		System.out.println("서브 사진2입니다.");
		String path =	directory + fileName;
		System.out.println("파일 이름: " + fileName);
			System.out.println("파일경로: " + path );
			System.out.println("-------------------------");
			board.setSubFileName2(fileName);
			board.setSubFilePath2(path);
	
	}
	
				/*
				 * if(fName.equals("album")) { String fileName =
				 * mRequest.getFilesystemName(fName); System.out.println("앨범 사진입니다."); String
				 * path = directory + fileName; System.out.println("파일 이름: " + fileName);
				 * System.out.println("파일경로: " + path );
				 * System.out.println("-------------------------");
				 * board.setSubFileName2(fileName); board.setSubFilePath2(path); }
				 */
	
	
	
	}//if
	}//while
	board.setMemberNo(1);
	mapper.insertAccInfo(board);
	response.sendRedirect("detail.do?accNo=" + board.getAccNo());
	
	}//service
}//class
