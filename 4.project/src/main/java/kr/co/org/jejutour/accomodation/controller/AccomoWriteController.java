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

import kr.co.mlec.board.dao.BoardMapper;
import kr.co.org.jejutour.repository.vo.AccInfoVO;
@WebServlet("/view/accomodation/write.do")
private BoardMapper mapper
public class AccomoWriteController extends HttpServlet{
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	System.out.println("넘어왔습니다.");
	
	
	
	String directory = "../../resources/images/accomodation/";
	
	
	
	MultipartRequest mRequest = new MultipartRequest(
			request,
			"c:/bit2019/bin/miniproject_2/4.project/src/main/webapp/resources/images/accomodation",
			1024*1024*100,
			"utf-8",
			new DefaultFileRenamePolicy()
			);
	System.out.println("파일 업로드 성공함...");

	
	AccInfoVO board = new AccInfoVO();  
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
	}//inner if
	if(fName.equals("subPic1")) {
		String fileName = mRequest.getFilesystemName(fName);
		System.out.println("서브 사진1입니다.");
		String path =	directory + fileName;
		System.out.println("파일 이름: " + fileName);
			System.out.println("파일경로: " + path );
			System.out.println("-------------------------");
		}
	
	if(fName.equals("subPic2")) {
		String fileName = mRequest.getFilesystemName(fName);
		System.out.println("서브 사진2입니다.");
		String path =	directory + fileName;
		System.out.println("파일 이름: " + fileName);
			System.out.println("파일경로: " + path );
			System.out.println("-------------------------");
		}
	
	
	
	
	}//if
	}//while
	

	
	}//service
}//class
